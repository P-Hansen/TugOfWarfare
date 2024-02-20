/// @description AoE unit damge

var enemiesInRange = ds_list_create();
var enemyCount = instance_place_list(x, y, unitClass, enemiesInRange, false);
var target = noone;

for (var i = 0; i < enemyCount; i++;) {
	target = ds_list_find_value(enemiesInRange, i);
	
	//if target doesn't have fireImmune tag
	if(!asset_has_tags(target.object_index, "fireImmune", asset_object)){
		var burn = instance_create_depth(x, y, target.depth-1, statusEffectBurning);
		burn.onHit(target);
	}

	target.hp -= damage;
	target.flashTimer = 5;
	var num = instance_create_depth(target.x, target.y-16, target.depth-1, damageNumber);
	num.amount = damage;
	//audio_play_sound(sfxHit, 0, 0);
}

ds_list_destroy(enemiesInRange);