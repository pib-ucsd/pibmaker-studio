// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_GenerateEnemy(_enemiesList, _numEnemiesInList, _spriteHeight){
	var enemyToSpawn = _enemiesList[random_range(0, _numEnemiesInList - 1)];
	var spawnPointX = window_get_width() - 64;
	var spawnPointY = 600 - 0.8 * floor(random_range(0, 3)) * _spriteHeight;
	var spawnDepth = 0;
	
	instance_create_depth(spawnPointX, spawnPointY, spawnDepth, enemyToSpawn);
}