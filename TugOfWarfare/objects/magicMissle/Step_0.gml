/// @description Insert description here

//unit tracking
if(trackFlag == true){
	var target = pickTarget(enemy, x, y);
	if(instance_exists(target)){
		var turn = point_direction(x, y, target.x, target.y);
		var angleDifference = angle_difference(direction, turn);
		direction -= angleDifference/10;
	}
}
image_angle = direction;

if(place_meeting(x, y, enemy)){
	var target = instance_place(x, y, enemy);
	target.hp -= damage;
	target.flashTimer = 5;
	instance_destroy(self);
}