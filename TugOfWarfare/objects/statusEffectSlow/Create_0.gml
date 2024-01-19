/// @description Insert description here

statusTimer = 2*4;

function onHit(unit){
	unit.unitColour = c_blue;
	unit.moveSpeed -= 0.5;
	
	array_push(unit.statusEffects, self);
}

//ticks every 0.25 seconds
function onTick(unit, i){
	
	//trigger onEnd
	statusTimer--;
	if(statusTimer <= 0){
		onEnd(unit, i);
	}
}


function onEnd(unit, i){
	unit.unitColour = c_white;
	unit.moveSpeed += 0.5;
	
	//remove self
	array_delete(unit.statusEffects, i, 1);
	instance_destroy(self);
}