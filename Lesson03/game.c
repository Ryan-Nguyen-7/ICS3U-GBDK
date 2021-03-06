// Copyright (c) 2021 St. Mother Teresa HS All rights reserved.
//
// Created by: Ryan Nguyen
// Created on: January 2021
// This is the "Hello, World!" program for the gameBoy

#include <stdio.h>
#include <gb/gb.h>

#include "Smiler.h"


int main() {
	set_sprite_data(0, 2, TileData);
	set_sprite_tile(0, 1);
	move_sprite(0, 88, 78);
	SHOW_SPRITES;
	
	while(1) {
		switch(joypad()) {
			case J_LEFT:
				scroll_sprite(0,-10,0);
				break;
			case J_RIGHT:
				scroll_sprite(0,10,0);
				break;
			case J_UP:
				scroll_sprite(0,0,-10);
				break;
			case J_DOWN:
				scroll_sprite(0,0,10);
				break;
		}
		delay(1000);
	}
}
