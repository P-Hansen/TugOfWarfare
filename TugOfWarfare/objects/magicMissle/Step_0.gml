/// @description Insert description here

//unit tracking
if(trackFlag == true){
	var target = instance_nearest(x, y, enemy[0]);
	if(instance_exists(target)){
		var turn = point_direction(x, y, target.x, target.y);
		var angleDifference = angle_difference(direction, turn);
		direction -= angleDifference/10;
	}
}
image_angle = direction;

//units
if(place_meeting(x, y, enemy[0])){
	var target = instance_place(x, y, enemy[0]);
	target.hp -= damage;
	target.flashTimer = 5;
	instance_destroy(self);
}

//buildings
if(place_meeting(x, y, enemy[1])){
	var target = instance_place(x, y, enemy[1]);
	target.hp -= damage;
	target.flashTimer = 5;
	instance_destroy(self);
}