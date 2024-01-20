/// @description Insert description here

if(damageDoneFlag == false and place_meeting(x, y, enemy)){
	var target = instance_place(x, y, enemy);
	target.hp -= damage;
	target.flashTimer = 5;
	damageDoneFlag = true;
}