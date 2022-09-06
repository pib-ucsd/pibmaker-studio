/// @description Insert description here
// You can write your code in this editor

scr_PlayerHit();
with (obj_EnemyParent) {
	instance_destroy();
}

obj_enemyController.alarm[1] = room_speed * 3;