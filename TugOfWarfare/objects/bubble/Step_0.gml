/// @description Insert description here

counter += 0.15;
oscillation = sin(counter);
image_xscale = scale+oscillation/4;
image_yscale = scale+oscillation/4;

//units
if(place_meeting(x, y, enemy[0])){
	var target = instance_place(x, y, enemy[0]);
	target.hp -= damage;
	target.flashTimer = 5;
	//if target doesn't have bubbleImmune tag
	if(!asset_has_tags(target.object_index, "bubbleImmune", asset_object)){
		var slow = instance_create_depth(x, y, target.depth-1, statusEffectBubble);
		slow.onHit(target);
	}
	
	instance_destroy(self);
}

//buildings
if(place_meeting(x, y, enemy[1])){
	var target = instance_place(x, y, enemy[1]);
	target.hp -= damage;
	target.flashTimer = 5;
	instance_destroy(self);
}