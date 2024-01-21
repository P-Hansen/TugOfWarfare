/// @description Insert description here

//units
if(damageDoneFlag == false and place_meeting(x, y, enemy[0])){
	var target = instance_place(x, y, enemy);
	target.hp -= damage;
	target.flashTimer = 5;
	var poison = instance_create_depth(x, y, target.depth-1, statusEffectPoison);
	poison.onHit(target);
	damageDoneFlag = true;
}

//buildings
if(damageDoneFlag == false and place_meeting(x, y, enemy[1])){
	var target = instance_place(x, y, enemy);
	target.hp -= damage/2;
	target.flashTimer = 5;
	damageDoneFlag = true;
}