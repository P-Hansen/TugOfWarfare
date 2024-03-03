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
	var num = instance_create_depth(target.x, target.y-16, target.depth-1, damageNumber);
	num.amount = damage;
	num.textColour = $00A651;
	var pitch = random_range(0.8, 1);
	audio_play_sound(sfxHit, 1, false, 1, 0, pitch);
	instance_destroy(self);
}