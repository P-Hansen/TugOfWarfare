/// @description Insert description here

if(place_meeting(x, y, enemy)){
	var unit = instance_place(x, y, enemy);
	var slow = instance_create_depth(x, y, unit.depth-1, statusEffectBrambles);
	slow.onHit(unit);
	unit.hp -= 50;
	instance_destroy(self, false);
}