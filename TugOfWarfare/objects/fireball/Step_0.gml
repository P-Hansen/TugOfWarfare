/// @description Insert description here

if(place_meeting(x, y, enemy)){
	var target = instance_place(x, y, enemy);
	target.hp -= damage;
	target.flashTimer = 5;
	
	//if target doesn't have fireImmune tag
	if(!asset_has_tags(target.object_index, "fireImmune", asset_object) and !asset_has_tags(target.object_index, "building", asset_object)){
		if(instance_exists(target)){
			var burn = instance_create_depth(x, y, target.depth-1, statusEffectBurning);
			burn.onHit(target);
		}
	}
	var num = instance_create_depth(target.x, target.y-16, target.depth-1, damageNumber);
	num.amount = damage;
	num.textColour = choose(c_orange, c_red);
	global.damageDone += damage;
	instance_destroy(self);
}

