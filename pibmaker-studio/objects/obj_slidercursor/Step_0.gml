/// @description Insert description here
// You can write your code in this editor

if (pressed) {
	x = clamp(mouse_x, rangeMin, rangeMin+rangeMax);
	var newDifficulty = 1 + (x - rangeMin)/rangeMax*3.2;
	inst_sliderBar.difficulty = newDifficulty;
	global.difficulty = newDifficulty;
}
