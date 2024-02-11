/// @description Insert description here

// % chance to spawn grass
density = 25;

for(var i = 0; i < room_width-32; i += 32){
	for(var j = 0; j < room_height-100; j += 32){
		var xOffset = irandom_range(-16, 16);
		var yOffset = irandom_range(-16, 16);
		var roll = irandom_range(1, 100);
		if(roll <= density){
			instance_create_layer(i + xOffset, j + yOffset, "Instances", grass1);
		}
	}
}

// % chance to spawn poppy
density = 10;

for(var i = 0; i < room_width-32; i += 32){
	for(var j = 0; j < room_height-100; j += 32){
		var xOffset = irandom_range(-16, 16);
		var yOffset = irandom_range(-16, 16);
		var roll = irandom_range(1, 100);
		if(roll <= density){
			instance_create_layer(i + xOffset, j + yOffset, "Instances", poppy);
		}
	}
}

// % chance to spawn daisy
density = 10;

for(var i = 0; i < room_width-32; i += 32){
	for(var j = 0; j < room_height-100; j += 32){
		var xOffset = irandom_range(-16, 16);
		var yOffset = irandom_range(-16, 16);
		var roll = irandom_range(1, 100);
		if(roll <= density){
			instance_create_layer(i + xOffset, j + yOffset, "Instances", daisy);
		}
	}
}

// % chance to spawn goldenrod
density = 10;

for(var i = 0; i < room_width-32; i += 32){
	for(var j = 0; j < room_height-100; j += 32){
		var xOffset = irandom_range(-16, 16);
		var yOffset = irandom_range(-16, 16);
		var roll = irandom_range(1, 100);
		if(roll <= density){
			instance_create_layer(i + xOffset, j + yOffset, "Instances", goldenrod);
		}
	}
}

// % chance to spawn bluebell
density = 10;

for(var i = 0; i < room_width-32; i += 32){
	for(var j = 0; j < room_height-100; j += 32){
		var xOffset = irandom_range(-16, 16);
		var yOffset = irandom_range(-16, 16);
		var roll = irandom_range(1, 100);
		if(roll <= density){
			instance_create_layer(i + xOffset, j + yOffset, "Instances", bluebell);
		}
	}
}

//creating trees
var num = choose(0, 0, 0, 0, 0, 1, 1, 3, 3, 5);
for(var i = 0; i < num; i++){
	var newX = irandom_range(0, room_width);
	var newY = irandom_range(0, room_height-100);
	instance_create_layer(newX, newY, "Instances", tree1);
}

//creating placement areas
for(var i = 0; i < 20; i++){
	var newX = irandom_range(0, room_width);
	var newY = irandom_range(0, room_height);
	instance_create_layer(newX, newY, "Instances", placementArea);
}

//filling placement areas
density = 100;

for(var i = 32; i < room_width-32; i += 32){
	for(var j = 64; j < room_height-100; j += 32){
		var xOffset = irandom_range(-16, 16);
		var yOffset = irandom_range(-16, 16);
		var roll = irandom_range(1, 100);
		if(roll <= density){
			if(position_meeting(i, j, placementArea)){
				instance_create_layer(i + xOffset, j + yOffset, "Instances", grass1);
			}
		}
	}
}

with(placementArea){
	instance_destroy(self);
}





