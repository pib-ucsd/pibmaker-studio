/// @description Insert description here
// You can write your code in this editor

// create random enemy instance above the background layer
//instance_create_depth(window_get_width() - 64, 600, 0, enemiesList[random_range(0, numEnemyTypes - 1)]);
scr_GenerateEnemy(enemiesList, numEnemyTypes, spriteHeight, true);
// range is number of seconds between each enemy instance spawning
alarm[1] = room_speed * random_range(.5, 2) / global.difficulty;