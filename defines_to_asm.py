#!/usr/bin/env python

import pathlib, re

# basic splitter into control and comment blocks
basicSplit = re.compile(r'^(?P<padding>[\t ]*)(?:(?P<ctrl>#.*?)|(?P<noCtrl>))[\t ]*(?:\/\/(?P<comment>.*))?$', re.MULTILINE)
# process control statements
ifdefStatementMatch = re.compile(r'#ifdef[\t ]+(?P<id>\w+)')
condStatementMatch = re.compile(r'#if[\t ]+(?P<stat>.*)')
ctrlStatementMatch = re.compile(r'#(?P<ctrl>else|endif)')
macroMatch = re.compile(r'#define[\t ]+(?P<id>\w+)\((?P<params>[\w,]+)\)[\t ]+(?P<stat>.*)[\t ]*')
defineMatch = re.compile(r'#define[\t ]+(?P<id>\w+)(?:[\t ]+(?P<stat>.*)|)[\t ]*')
# separates between (approximately) expressions and non-expressions
expressionSplit = re.compile(
	"(?:" + "|".join((
		r'(?:0[Xx](?P<hex>[\dA-Fa-f]+))',	# hex numerals
		# r'(?:0?[Oo](?P<oct>[0-7]+))',		# oct numerals (C26 or smth)
		r'(?:0(?P<oct>[0-7]+))',			# oct numerals
		r'(?:0[Bb](?P<bin>[01]+))',			# bin numerals
		r'(?:(?P<dec>\d+))',				# dec numerals
		r'(?P<mod>%)',						# mod operator, requires modification to insert into ca65
		r'(?P<neq>!=)',						# neq operator, same as above
		r'(?P<opt><<|>>|=|>|<|>=|<=|&&|\|\|)',	# multi-symbol operators
		r'(?P<opr>[~*\/&^+\-|!])',				# single-symbol operators
		r'(?P<brc>[()])',						# braces, who knows how they get modified later
		r'(?P<tkn>\w+)',						# symbols
		r'(?P<pad>[\t ]+)',						# space
	)) + ")"
)
expressionMatch = re.compile(r'(?:' + expressionSplit.pattern + ')+')

def portExprToAsm(expr : str):
	outString = ""
	for i in re.finditer(expressionSplit, expr):
		kind = i.lastgroup
		val = i.group(kind)
		if kind in ("dec", "opt", "opr", "brc", "pad"):	# no-mod tokens
			outString += val
		elif kind in ("hex", "bin", "tkn"):	# re-prefixed tokens
			outString += {"hex" : "$", "bin" : "%", "tkn": "_"}[kind]
			outString += val
		elif kind == "oct":
			# octal numerals are not supported in ca65,
			# so convert them to decimal
			outString += str(int(val, base=8))
		elif kind in ("mod", "neq"):
			# those tokens exist but with different symbols,
			# so replace them
			outString += {"mod" : ".mod", "neq" : "<>"}[kind]

	return outString

def convertCFileToS(filename : pathlib.Path, outfilename : pathlib.Path):
	fileText = filename.read_text()
	outText = ""
	for token in re.finditer(basicSplit, fileText):
		di = token.groupdict()

		outString = ""

		if (di['padding'] != None):
			outString += di['padding']

		if (di['ctrl'] != None):
			stat = di['ctrl']
			if re.match(ifdefStatementMatch, stat):
				match = re.match(ifdefStatementMatch, stat).groupdict()
				outString += f".ifdef _{match['id']}"
			elif re.match(condStatementMatch, stat): # CURRENTLY DANGEROUS !!
				match = re.match(condStatementMatch, stat).groupdict()
				outString += f".if {match['stat']}"
			elif re.match(ctrlStatementMatch, stat):
				match = re.match(ctrlStatementMatch, stat).groupdict()
				outString += f".{match['ctrl']}"
			elif re.match(macroMatch, stat):
				match = re.match(macroMatch, stat).groupdict()
				outString += f"; MACRO: _{match['id']}({match['params']}) = {match['stat']}"
			elif re.match(defineMatch, stat):
				match = re.match(defineMatch, stat).groupdict()
				if match['stat'] == None:
					outString += f"_{match['id']} = 1"
				elif re.match(expressionMatch, match['stat']) != None:
					outString += f"_{match['id']} = {portExprToAsm(match['stat'])}"
				else:
					outString += f".define _{match['id']} {match['stat']}"
			else:
				outString += f"; NP : {di['ctrl']}"

		if (di['comment'] != None):
			if (len(outString)):
				outString += " "
			outString += f";{di['comment']}"

		outString += "\n"

		outText += outString
	outfilename.write_text(outText)

if __name__ == "__main__":
	import sys, argparse
	parser = argparse.ArgumentParser()
	parser.add_argument("input", nargs=argparse.REMAINDER)
	args = parser.parse_args()

	ownPath = pathlib.Path(sys.path[0]).resolve()
	for filename in args.input:
		realFilename = ownPath / filename
		outFilename = ownPath / "TMP" / (realFilename.stem+".s")
		convertCFileToS(realFilename, outFilename)