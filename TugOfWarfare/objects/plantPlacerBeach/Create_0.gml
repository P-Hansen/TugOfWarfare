/// @description Insert description here

plants = [daisy, goldenrod];

// % chance to spawn flowers
density = 25;

for(var i = 0; i < room_width; i += 32){
	for(var j = 64; j < room_height/2; j += 32){
		var xOffset = irandom_range(-16, 16);
		var yOffset = irandom_range(-16, 16);
		var roll = irandom_range(0, 100);
		if(roll <= density){
			array_shuffle_ext(plants);
			instance_create_layer(i + xOffset, j + yOffset, "Instances", plants[0]);
		}
	}
}

//chance to spawn grass
density = 50;

for(var i = 0; i < room_width; i += 32){
	for(var j = 0; j < 200; j += 32){
		var xOffset = irandom_range(-16, 16);
		var yOffset = irandom_range(-16, 16);
		var roll = irandom_range(0, 100);
		if(roll <= density){
			array_shuffle_ext(plants);
			instance_create_layer(i + xOffset, j + yOffset, "Instances", grass1);
		}
	}
}

//creating placement areas
for(var i = 0; i < 6; i++){
	var newX = irandom_range(0, room_width);
	var newY = irandom_range(0, room_height/2);
	instance_create_layer(newX, newY, "Instances", placementArea);
}

//filling placement areas
density = 50;

for(var i = 0; i < room_width-32; i += 32){
	for(var j = 64; j < room_height-100; j += 32){
		var xOffset = irandom_range(-16, 16);
		var yOffset = irandom_range(-16, 16);
		var roll = irandom_range(0, 100);
		if(roll <= density){
			if(position_meeting(i, j, placementArea)){
				array_shuffle_ext(plants);
				instance_create_layer(i + xOffset, j + yOffset, "Instances", plants[0]);
			}
		}
	}
}

with(placementArea){
	instance_destroy(self);
}





