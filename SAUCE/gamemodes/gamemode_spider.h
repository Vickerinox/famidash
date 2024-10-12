
CODE_BANK_PUSH("XCD_BANK_01")

void cube_vel_stuff();
void spider_eject();
void common_gravity_routine();
void scroll_thing_again();
void spider_movement(void){
// handle y

// currplayer_gravity
	// currplayer_vel_y is signed
	//if(currplayer_vel_y < 0x400){
	fallspeed_big = CUBE_MAX_FALLSPEED;
	fallspeed_mini = MINI_CUBE_MAX_FALLSPEED;
	gravity_big = CUBE_GRAVITY;
	gravity_mini = MINI_CUBE_GRAVITY;

	common_gravity_routine();

	Generic.x = high_byte(currplayer_x);
	
	// this literally offsets the collision down 1 pixel for the vel reset to happen every frame instead of each other frame
	if (currplayer_gravity) {
		Generic.y = high_byte(currplayer_y) - 2;
	} else {
		Generic.y = high_byte(currplayer_y) + 1;
	}
	
	spider_eject();
	
	if (!currplayer_gravity) {
		if(controllingplayer->press_a && currplayer_vel_y == 0) {
			currplayer_gravity = 1;
			do {
				high_byte(currplayer_y) -= 0x08;
				//scroll_thing_again();
				set_scroll_y(scroll_y);
				if (currplayer_y < 0x0600 && scroll_y <= min_scroll_y){
					idx8_store(cube_data, currplayer, cube_data[currplayer] | 0x01);	//DIE if player goes too high
					break;
				}
				Generic.y = high_byte(currplayer_y); // the rest should be the same
			} while (!bg_coll_U());
			high_byte(currplayer_y) -= eject_U;
			currplayer_vel_y = 0;
		}
}	
	else {
		if(controllingplayer->press_a && currplayer_vel_y == 0) {
			currplayer_gravity = 0;
			do {
				high_byte(currplayer_y) += 0x08;
				//scroll_thing_again();
				set_scroll_y(scroll_y);
				
				Generic.y = high_byte(currplayer_y); // the rest should be the same
			} while (!bg_coll_D());

			high_byte(currplayer_y) -= eject_D;
			
			currplayer_vel_y = 0;


		}
	}		
	

	// this literally offsets the collision down 1 pixel for the vel reset to happen every frame instead of each other frame
	if (currplayer_gravity) {
		Generic.y = high_byte(currplayer_y) - 2;
	} else {
		Generic.y = high_byte(currplayer_y) + 1;
	}		

	// check collision down a little lower than CUBE
	Generic.y = high_byte(currplayer_y); // the rest should be the same

	if (currplayer_vel_y != 0){
		if(controllingplayer->press_a) {
			idx8_store(cube_data, currplayer, cube_data[currplayer] | 0x02);
		}
	}
}	


void scroll_thing_again(void) {
	if (!dual) {
		if (currplayer_y < 0x4000 && (scroll_y > min_scroll_y)){ // change y scroll (upward)
			tmp1 = MSB(0x4000 - currplayer_y);
			scroll_y -= tmp1;
			high_byte(currplayer_y) = high_byte(currplayer_y) + tmp1;
		}
		cap_scroll_y_at_top();

		
		if (currplayer_y > 0xA000){ // change y scroll (upward)
			tmp1 = MSB(currplayer_y - 0xA000);
			scroll_y += tmp1;
			if (high_byte(scroll_y) < MSB(0x300)) high_byte(currplayer_y) = high_byte(currplayer_y) - tmp1;
		}
		if (high_byte(scroll_y) >= MSB(0x300)) scroll_y = 0x2EF;
	}
	else {
		if (currplayer_y < 0x0700 && (scroll_y > min_scroll_y)){ // change y scroll (upward)
			tmp1 = MSB(0x0700 - currplayer_y);
			scroll_y -= tmp1;
			high_byte(currplayer_y) = high_byte(currplayer_y) + tmp1;
		}
		cap_scroll_y_at_top();

		
		if (currplayer_y > 0xF000){ // change y scroll (upward)
			tmp1 = MSB(currplayer_y - 0xF000);
			scroll_y += tmp1;
			if (high_byte(scroll_y) < MSB(0x300)) high_byte(currplayer_y) = high_byte(currplayer_y) - tmp1;
		}
		if (high_byte(scroll_y) >= MSB(0x300)) scroll_y = 0x2EF;
	}
}					


void spider_eject() {
	if(!currplayer_gravity){
		if(bg_coll_D()){ // check collision below
			high_byte(currplayer_y) -= eject_D;
			currplayer_vel_y = 0;


		}
	} else {
		if(bg_coll_U()){ // check collision above
			high_byte(currplayer_y) -= eject_U + 1;
			currplayer_vel_y = 0;

		} 
	}
}

CODE_BANK_POP()
