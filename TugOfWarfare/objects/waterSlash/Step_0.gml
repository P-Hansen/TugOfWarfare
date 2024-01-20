/// @description Insert description here

if(place_meeting(x, y, enemy)){
	var target = instance_place(x, y, enemy);
	if(!array_contains(targets, target)){
		target.hp -= damage;
		target.flashTimer = 5;
		array_push(targets, target);
	}
}