/// @description Insert description here

//units
if(place_meeting(x, y, enemy[0])){
	var target = instance_place(x, y, enemy[0]);
	target.hp -= damage;
	target.flashTimer = 5;
	var poison = instance_create_depth(x, y, target.depth-1, statusEffectPoison);
	poison.onHit(target);
	instance_destroy(self);
}

//buildings
if(place_meeting(x, y, enemy[1])){
	var target = instance_place(x, y, enemy[1]);
	target.hp -= damage;
	target.flashTimer = 5;
	instance_destroy(self);
}