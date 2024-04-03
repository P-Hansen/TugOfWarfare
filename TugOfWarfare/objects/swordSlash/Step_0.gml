/// @description Insert description here

if(damageDoneFlag == false and place_meeting(x, y, enemy)){
	var target = instance_place(x, y, enemy);
	if(owner == "player" and x > room_width/2){
		damage -= global.passiveArmour;
	} else if(owner == "enemy" and x < room_width/2) {
		damage -= global.passiveArmour;
	}
	target.hp -= damage;
	target.flashTimer = 5;
	damageDoneFlag = true;
	var num = instance_create_depth(target.x, target.y-16, target.depth-1, damageNumber);
	global.damageDone += damage;
	num.amount = damage;
}