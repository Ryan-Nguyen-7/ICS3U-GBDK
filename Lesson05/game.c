// Copyright (c) 2021 St. Mother Teresa HS All rights reserved.
//
// Created by: Ryan Nguyen
// Created on: January 2021
// This is the "Backgrounds" program for the gameBoy

#include <stdio.h>
#include <gb/gb.h>
#include <gb/font.h>

#include "backgroundtiles.c"
#include "simplebackgroundmap.c"
#include "windowmap.c"


void main(){
	font_t min_font;

	font_init();
	min_font = font_load(font_min); // 36 tile
	font_set(min_font);



	set_bkg_data(37, 7, backgroundtiles);
	set_bkg_tiles(0, 0, 40, 18, backgroundmap);
	
	set_win_tiles(0,0,5,1,windowmap);
	move_win(7,120);
	
	SHOW_BKG;
	SHOW_WIN;
	DISPLAY_ON;
	
	while(1){
	 	scroll_bkg(1,0);
	 delay(100);
	}
}
