/// @description touching water?

if(place_meeting(x, y, ponds)){
	unitColour = c_aqua;
	moveSpeed = ogSpeed - 0.3;
	wet = true;
	
	if(!array_any(statusEffects, function(element, index){
		return element.object_index == statusEffectBurning;
	})){
		//no burning
	} else { //unit is burning
		var i = array_find_index(statusEffects, function(element, index){
			return element.object_index == statusEffectBurning;
		});
		//end burning status effect
		statusEffects[i].onEnd(self, i);
	}
	
} else {
	if(unitColour == c_aqua){
		unitColour = oldColour;
	}
	moveSpeed = ogSpeed;
	wet = false;
}


alarm[9] = room_speed*0.5;