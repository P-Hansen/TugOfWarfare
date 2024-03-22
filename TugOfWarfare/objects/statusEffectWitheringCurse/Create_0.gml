/// @description Insert description here

statusTimer = 0;

function onHit(unit){
	array_push(unit.statusEffects, self);
	unit.unitColour = $cf96e0;
}

//ticks every 0.25 seconds
function onTick(unit, i){
	statusTimer += 1;
	
	if(statusTimer == 3){
		unit.hp -= 3;
		statusTimer = 0;
	}
}


function onEnd(unit, i){
	//remove self
	array_delete(unit.statusEffects, i, 1);
	instance_destroy(self);
}