/// @description Insert description here

//reset unit selection
if(instance_exists(unit)){
	unit.selectedFlag = false;
}

//select unit
unit = collision_point(mouse_x, mouse_y, unitClass, false, true);
if(unit == noone){
	unit = collision_point(mouse_x, mouse_y, buildingButtonParent, false, true);
}

//pull unit data
if(unit != noone){
	unit.selectedFlag = true;
	unitMaxHp = unit.maxHp;
	unitRange = unit.range;
	unitDamage = unit.damage;
	unitCooldown = unit.cooldown;
	unitDamageType = unit.damageType;
	unitName = unit.unitName;
}

//select button
//button = collision_point(mouse_x, mouse_y, buildingButtonParent, false, true);