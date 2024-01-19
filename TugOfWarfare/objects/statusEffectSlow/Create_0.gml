/// @description Insert description here

statusTimer = 2*4;

function onHit(unit){
	unit.unitColour = c_blue;
	
	array_push(unit.statusEffects, self);
}


function onTick(unit, i){
	
	//trigger onEnd
	statusTimer--;
	if(statusTimer <= 0){
		onEnd(unit, i);
	}
}


function onEnd(unit, i){
	unit.unitColour = c_white;
	
	//remove self
	array_delete(unit.statusEffects, i, 1);
	instance_destroy(self);
}