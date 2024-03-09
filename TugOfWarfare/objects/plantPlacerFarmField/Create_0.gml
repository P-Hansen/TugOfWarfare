/// @description Insert description here

// % chance to spawn grass
density = 100;

for(var i = 0; i < room_width; i += 25){
	for(var j = 0; j < room_height-50; j += 45){
		var xOffset = irandom_range(-3, 3);
		var yOffset = irandom_range(-1, 1);
		var roll = irandom_range(0, 100);
		if(roll <= density){
			var newGrass = instance_create_layer(i + xOffset, j + yOffset, "Instances", grass1);
			newGrass.image_blend = #edc811;
		}
	}
}

//creating haybails
var num = choose(5, 5, 7, 7, 12);
for(var i = 0; i < num; i++){
	var newX = irandom_range(0, room_width);
	var newY = irandom_range(0, room_height-100);
	instance_create_layer(newX, newY, "Instances", haybail);
}

//scarecrow
var num = choose(1, 2, 3);
for(var i = 0; i < num; i++){
	var newX = irandom_range(0, room_width);
	var newY = irandom_range(0, room_height-100);
	instance_create_layer(newX, newY, "Instances", scarecrow);
}

with(placementArea){
	instance_destroy(self);
}





