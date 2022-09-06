/// @description Insert description here
// You can write your code in this editor

// the score increases when the enemy leaves the room
score += power(global.difficulty, 1/5) * (speed / 2 + instance_number(obj_EnemyParent));
global.highscore = (global.highscore > score) ? global.highscore : score;
instance_destroy();