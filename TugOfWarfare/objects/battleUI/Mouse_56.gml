/// @description Insert description here

if(instance_exists(unit)){
	unit.selectedFlag = false;
	
}

unit = collision_point(mouse_x, mouse_y, unitClass, false, true);

if(unit != noone){
	unit.selectedFlag = true;
	unitMaxHp = unit.maxHp;
	unitRange = unit.range;
	unitDamage = unit.damage;
	unitCooldown = unit.cooldown;
	unitDamageType = unit.damageType;
}