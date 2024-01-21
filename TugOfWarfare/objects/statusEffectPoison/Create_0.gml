/// @description Insert description here

statusTimer = 5*4;

function onHit(unit){

	if(!array_any(unit.statusEffects, function(element, index){
		if(element.object_index == statusEffectPoison){
			return true;
		}
	})){
		unit.unitColour = c_lime;
		unit.moveSpeed -= 0.5;
		array_push(unit.statusEffects, self);
		
	} else { //if unit is already poisoned
		var i = array_find_index(unit.statusEffects, function(element, index){
			if(element.object_index == statusEffectPoison){
				return true;
			}
		});
		//find the bubble and add time
		unit.statusEffects[i].statusTimer += statusTimer;
		instance_destroy(self);
	}
}

//ticks every 0.25 seconds
function onTick(unit, i){
	//every 1 second
	if(frac(statusTimer/4) == 0){
		unit.hp -= statusTimer/4;
		var num = instance_create_depth(unit.x, unit.y-16, unit.depth-1, poisonNumber);
		num.amount = statusTimer/4;
		//show_debug_message(string(statusTimer/4));
		//audio_play_sound(sfxHit, 1, 0);
	}
	
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