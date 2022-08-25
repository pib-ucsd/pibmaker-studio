// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
// The score resets when the player collide with the enemy
function scr_PlayerHit(){
	show_debug_message("PLAYER WAS HIT");
	//global.highscore = (global.highscore > score) ? global.highscore : score;
	score = 0;
}