/// @description Insert description here

if(damageDoneFlag == false and place_meeting(x, y, enemy)){
	var target = instance_place(x, y, enemy);
	target.hp -= damage;
	target.flashTimer = 5;
	var slow = instance_create_depth(x, y, target.depth-1, statusEffectPoison);
	slow.onHit(target);
	damageDoneFlag = true;
}