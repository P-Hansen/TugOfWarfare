/// @description Insert description here

counter += 0.15;
oscillation = sin(counter);
image_xscale = scale+oscillation/4;
image_yscale = scale+oscillation/4;

if(place_meeting(x, y, enemy)){
	var target = instance_place(x, y, enemy);
	target.hp -= damage;
	target.flashTimer = 5;
	
	//if target doesn't have building tag
	if(!asset_has_tags(target.object_index, "building", asset_object) and !asset_has_tags(target.object_index, "bubbleImmune", asset_object)){
		if(instance_exists(target)){
			var burn = instance_create_depth(x, y, target.depth-1, statusEffectBubble);
			burn.onHit(target);
		}
	}
	var num = instance_create_depth(target.x, target.y-16, target.depth-1, damageNumber);
	num.amount = damage;
	instance_destroy(self);
}