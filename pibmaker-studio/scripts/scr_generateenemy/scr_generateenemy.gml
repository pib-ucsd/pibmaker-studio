// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_GenerateEnemy(_enemiesList, _numEnemiesInList, _spriteHeight, _direction){
	// 5x as likely to spawn vertical enemy
	var enemyToSpawn = _enemiesList[random_range(0, _numEnemiesInList - 1)];
	var spawnPointX = window_get_width() - 64;
	var spawnPointY = 64;
	var minSp = 6;
	var maxSp = 12;
	var moveSp = random_range(minSp, maxSp);
	var spawnDepth = 0;
	var newEnemy = instance_create_depth(64, 64, spawnDepth, enemyToSpawn);
	
	var positionArr = [0, 1, 4.5];
	
	if (_direction) {
		// if direction == true, enemy is vertical
		spawnPointX = floor(random_range(64, spawnPointX));
		
		newEnemy.vspeed = moveSp-2;
	}
	else {
		// else enemy is horizontal
		spawnPointY = 600 - 0.8 * positionArr[floor(random_range(0, 3))] * _spriteHeight;
		
		newEnemy.hspeed = -moveSp;
	}
	newEnemy.x = spawnPointX;
	newEnemy.y = spawnPointY;
}