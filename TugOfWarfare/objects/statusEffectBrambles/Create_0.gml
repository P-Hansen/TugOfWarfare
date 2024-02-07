/// @description Insert description here

statusTimer = 2*10;

function onHit(unit){
	unit.moveSpeed = unit.moveSpeed/2;
	unit.speed = unit.moveSpeed;
	
	array_push(unit.statusEffects, self);
}

//ticks every 0.25 seconds
function onTick(unit, i){
	
	//trigger onEnd
	//statusTimer--;
	//if(statusTimer <= 0){
	//	onEnd(unit, i);
	//}
}


function onEnd(unit, i){
	unit.moveSpeed = 1;
	
	//remove self
	array_delete(unit.statusEffects, i, 1);
	instance_destroy(self);
}