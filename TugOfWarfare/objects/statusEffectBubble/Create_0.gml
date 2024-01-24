/// @description Insert description here

statusTimer = 3*4;
targetW = 0;
targetH = 0;
target = noone;

function onHit(unit){
	//only add a bubble if there is none
	if(!array_any(unit.statusEffects, function(element, index){
		if(element.object_index == statusEffectBubble){
			return true;
		}
	})){
		targetW = unit.sprite_width;
		targetH = unit.sprite_height;
		target = unit;
		unit.currentStatus = status.disabled;
		unit.speed = 0;
		unit.image_speed = 0;
		unit.image_angle = 15;
		array_push(unit.statusEffects, self);
		
	} else { //if there already is a bubble
		var i = array_find_index(unit.statusEffects, function(element, index){
			if(element.object_index == statusEffectBubble){
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
	
	//trigger onEnd
	statusTimer--;
	if(statusTimer <= 0){
		onEnd(unit, i);
	}
}


function onEnd(unit, i){
	unit.currentStatus = status.active;
	unit.image_speed = 1;
	unit.image_angle = 0;
	
	//remove self
	array_delete(unit.statusEffects, i, 1);
	instance_destroy(self);
}