/// @description Insert description here

//units
if(place_meeting(x, y, enemy)){
	var target = instance_place(x, y, enemy);
	target.hp -= damage;
	target.flashTimer = 5;
	
	//if target doesn't have fireImmune tag
	if(!asset_has_tags(target.object_index, "fireImmune", asset_object)){
		var burn = instance_create_depth(x, y, target.depth-1, statusEffectBurning);
		burn.onHit(target);
	}
	
	instance_destroy(self);
}