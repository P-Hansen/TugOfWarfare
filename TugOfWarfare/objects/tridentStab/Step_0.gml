/// @description Insert description here

if(damageDoneFlag == false and place_meeting(x, y, enemy)){
	var target = instance_place(x, y, enemy);
	target.hp -= damage;
	target.flashTimer = 5;
	damageDoneFlag = true;
	var num = instance_create_depth(target.x, target.y-16, target.depth-1, damageNumber);
	num.amount = damage;
	global.damageDone += damage;
}