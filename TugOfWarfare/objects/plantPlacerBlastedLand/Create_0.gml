/// @description Insert description here

// % chance to spawn grass
density = 25;

for(var i = 32; i < room_width-32; i += 32){
	for(var j = 64; j < room_height-100; j += 32){
		var xOffset = irandom_range(-16, 16);
		var yOffset = irandom_range(-16, 16);
		var roll = irandom_range(0, 100);
		if(roll <= density){
			instance_create_layer(i + xOffset, j + yOffset, "Instances", grassBurnt);
		}
	}
}

// % chance to spawn dead trees
density = 10;

for(var i = 32; i < room_width-32; i += 32){
	for(var j = 64; j < room_height-100; j += 32){
		var xOffset = irandom_range(-16, 16);
		var yOffset = irandom_range(-16, 16);
		var roll = irandom_range(0, 100);
		if(roll <= density){
			instance_create_layer(i + xOffset, j + yOffset, "Instances", treeBurnt);
		}
	}
}

//creating placement areas
for(var i = 0; i < 6; i++){
	var newX = irandom_range(0, room_width);
	var newY = irandom_range(0, room_height-100);
	instance_create_layer(newX, newY, "Instances", placementArea);
}

//filling placement areas with dead trees
density = 80;

for(var i = 32; i < room_width-32; i += 32){
	for(var j = 64; j < room_height-100; j += 32){
		var xOffset = irandom_range(-16, 16);
		var yOffset = irandom_range(-16, 16);
		var roll = irandom_range(0, 100);
		if(roll <= density){
			if(position_meeting(i, j, placementArea)){
				instance_create_layer(i + xOffset, j + yOffset, "Instances", treeBurnt);
			}
		}
	}
}

with(placementArea){
	instance_destroy(self);
}





