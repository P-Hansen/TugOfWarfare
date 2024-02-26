/// @description Insert description here

if(place_meeting(x, y, enemy)){
	var target = instance_place(x, y, enemy);
	target.hp -= damage;
	target.flashTimer = 5;
	var num = instance_create_depth(target.x, target.y-16, target.depth-1, damageNumberRanged);
	num.amount = damage;
	num.scale = 1.5;
	num.direction = direction;
	instance_destroy(self);
}