/// @description AoE unit damge

var enemiesInRange = ds_list_create();
var enemyCount = instance_place_list(x, y, unitClass, enemiesInRange, false);
var target = noone;

for (var i = 0; i < enemyCount; i++;) {
	target = ds_list_find_value(enemiesInRange, i);
	var burn = instance_create_depth(x, y, target.depth-1, statusEffectBurning);
	burn.onHit(target);

	target.hp -= damage;
	target.flashTimer = 5;
	//audio_play_sound(sfxHit, 0, 0);
}

ds_list_destroy(enemiesInRange);