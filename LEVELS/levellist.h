// LEVEL ORDERING =============================================
// 
// NOTE: DO *NOT* PUT LEVEL DATA HERE.
// Level order is defined here, and consists of 3 tables. The 
// first table specifies the level data pointers, the second -
// sprite data pointers, and the third one - the ROM bank of 
// the level data. Here is an example:
//
// const unsigned char * const your_moms_house[] = {
//    level_name_1_, 
//    level_name_2_,
//    level_name_3_
//  };
//
// const unsigned char * const your_moms_sprites[] = {
//    level_name_1_SP,
//    level_name_2_SP,
//    level_name_3_SP,
// };
//
// const unsigned char your_moms_bank_account[] = {
//    0, // Level data starts in bank 0,
//    1,
//    2,
// }
// ============================================================
// go wild

#define	EASY 0
#define	NORMAL 1
#define	HARD 2
#define	HARDER 3
#define	INSANE 4
#define	DEMON 5

const unsigned char difficulty_pal[] ={
	0x21, 0x06, // easy
    0x2A, 0x30, // normal
    0x28, 0x30, // hard
	0x16, 0x30, // harder
    0x24, 0x06, // insane
    0x16, 0x30 // KING DEDEdemon
};

const unsigned short songtime[] = {	//for looping in practice mode
	5160, //stereo madness
	4900, //back on track
	5465, //polargeist
	4940, //dryout
	15000, //base after base
	4900, //cant let go
	5285, //jumper
	15000, //time machine
	5240, //cycles
	15000, //xstep
	15000, //clutterfunk
	14000, //menu
	14000, //practice
};



const unsigned char difficulty_list[] = {
    EASY,
    EASY,
    NORMAL,
    NORMAL,
    HARD,
    HARD,
    HARDER,
    HARDER,
    HARDER,
    INSANE,
    INSANE,
    INSANE,
    EASY,
    EASY,
    EASY,
    DEMON,
};

const unsigned char stars_list[] = {
	1,
	2,
	3,
	4,
	5,
	6,
	7,
	8,
	9,
	10,
	11,
	12,
	0,
	0,
	0,
	0,
};
const unsigned char colors_list[] = {
	0x12,
	0x14,
	0x15,
	0x16,
	0x17,
	0x28,
	0x2A,
	0x2C,
	0x11,
	0x12,
	0x14,
	0x15,
	0x00,
	0x00,
	0x00,
	0x00,
};
// exported from export_levels.py

extern const unsigned char* level_list[];
extern const unsigned char* sprite_list[];
extern const unsigned char level_bank_list[];
extern const unsigned char sprite_bank_list[];

// const unsigned char * const level_list[] = {
//     stereomadness_,
//     backontrack_,
//     polargeist_,
//     dryout_,
//     baseafterbase_,
//     cantletgo_,
//     jumper_,
//     timemachine_,
//     cycles_,
//     xstep_,
//     clutterfunk_,
//     test_,
//     test2_,
//     };

// const unsigned char * const sprite_list[] = {
//     stereomadness_SP,
//     backontrack_SP,
//     polargeist_SP,
//     dryout_SP,
//     baseafterbase_SP,
//     cantletgo_SP,
//     jumper_SP,
//     timemachine_SP,
//     cycles_SP,
//     xstep_SP,
//     clutterfunk_SP,
//     test_SP,
//     test2_SP,
// };

// const unsigned char level_bank_list[] = {
//     1,
//     8,
//     2,
//     7,
//     5,
//     3,
//     4,
//     9,
//     6,
//     0x0A,
//     0x0E, //clutterfunk
//     0x0C,
//     0x0D,
// };

// const unsigned char sprite_bank_list[] = {
//     0,
//     0,
//     0,
//     1,
//     0,
//     1,
//     1,
//     0,
//     0,
//     0,
//     0, //clutterfunk
//     1,
//     1,
// };
