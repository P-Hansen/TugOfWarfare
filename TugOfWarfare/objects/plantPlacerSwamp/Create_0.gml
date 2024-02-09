/// @description Insert description here

// % chance to spawn grass not in ponds
density = 25;

for(var i = 32; i < room_width-32; i += 32){
	for(var j = 64; j < room_height-100; j += 32){
		var xOffset = irandom_range(-16, 16);
		var yOffset = irandom_range(-16, 16);
		var roll = irandom_range(0, 100);
		if(roll <= density){
			if(!position_meeting(i, j, ponds)){
				instance_create_layer(i + xOffset, j + yOffset, "Instances", grass1);
			}
		}
	}
}

//place on ponds
density = 25;

for(var i = 32; i < room_width-32; i += 16){
	for(var j = 0; j < room_height-100; j += 16){
		var xOffset = irandom_range(-16, 16);
		var yOffset = irandom_range(-16, 16);
		var roll = irandom_range(0, 100);
		if(roll <= density){
			if(position_meeting(i, j, ponds)){
				if(!position_meeting(i - 16, j, ponds)){
					instance_create_layer(i + xOffset, j + yOffset, "Instances", catTails);
				}
				if(!position_meeting(i + 16, j, ponds)){
					instance_create_layer(i + xOffset, j + yOffset, "Instances", catTails);
				}
				if(!position_meeting(i, j - 16, ponds)){
					instance_create_layer(i + xOffset, j + yOffset, "Instances", catTails);
				}
				if(!position_meeting(i, j + 16, ponds)){
					instance_create_layer(i + xOffset, j + yOffset, "Instances", catTails);
				}
			}
		}
	}
}

with(placementArea){
	instance_destroy(self);
}





