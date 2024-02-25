/// @description burning units

var enemiesInRange = ds_list_create();
var enemyCount = instance_place_list(x, y, unitClass, enemiesInRange, false);
var target = noone;

for (var i = 0; i < enemyCount; i++;) {
	target = ds_list_find_value(enemiesInRange, i);
	target.hp -= damage;
	target.flashTimer = 5;
	var num = instance_create_depth(target.x, target.y-16, target.depth-1, fireNumber);
	num.amount = damage;
	//audio_play_sound(sfxHit, 0, 0);
}

ds_list_destroy(enemiesInRange);


alarm[1] = room_speed * 0.5;