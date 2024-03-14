/// @description AoE building damge

var enemiesInRange = ds_list_create();
var enemyCount = instance_place_list(x, y, buildingClass, enemiesInRange, false);
var target = noone;

for (var i = 0; i < enemyCount; i++;) {
	target = ds_list_find_value(enemiesInRange, i);
	target.hp -= damage;
	target.flashTimer = 5;
	var num = instance_create_depth(target.x, target.y-16, target.depth-1, damageNumber);
	num.amount = damage;
	num.textColour = choose(c_orange, c_red);
	//audio_play_sound(sfxHit, 0, 0);
	global.damageDone += damage;
}

ds_list_destroy(enemiesInRange);