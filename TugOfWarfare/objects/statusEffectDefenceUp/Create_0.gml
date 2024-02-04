/// @description Insert description here

statusTimer = 0;

function onHit(unit){
	unit.maxHp = (unit.maxHp)*1.1;
	unit.hp = unit.maxHp;
	
	//array_push(unit.statusEffects, self);
}

//ticks every 0.25 seconds
function onTick(unit, i){

}


function onEnd(unit, i){
	//remove self
	array_delete(unit.statusEffects, i, 1);
	instance_destroy(self);
}