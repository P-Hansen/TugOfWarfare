/// @description AoE building damge

var enemiesInRange = ds_list_create();
var enemyCount = instance_place_list(x, y, buildingClass, enemiesInRange, false);
var target = noone;

for (var i = 0; i < enemyCount; i++;) {
	target = ds_list_find_value(enemiesInRange, i);
	target.hp -= damage;
	target.flashTimer = 5;
	//audio_play_sound(sfxHit, 0, 0);
}

ds_list_destroy(enemiesInRange);