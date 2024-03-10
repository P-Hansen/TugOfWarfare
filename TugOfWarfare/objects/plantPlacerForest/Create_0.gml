/// @description Insert description here

// % chance to spawn grass
density = 50;

for(var i = 0; i < room_width; i += 32){
	for(var j = 0; j < room_height-100; j += 32){
		var xOffset = irandom_range(-16, 16);
		var yOffset = irandom_range(-16, 16);
		var roll = irandom_range(0, 100);
		if(roll <= density){
			instance_create_layer(i + xOffset, j + yOffset, "Instances", grass1);
		}
	}
}

//random trees
density = 10;

for(var i = 32; i < room_width-32; i += 32){
	for(var j = 64; j < room_height-100; j += 32){
		var xOffset = irandom_range(-16, 16);
		var yOffset = irandom_range(-16, 16);
		var roll = irandom_range(0, 100);
		if(roll <= density){
			var tree = instance_create_layer(i + xOffset, j + yOffset, "Instances", tree1);
			var scale = random_range(1, 2);
			tree.image_xscale = scale;
			tree.image_yscale = scale;
		}
	}
}

//creating placement areas
for(var i = 0; i < 20; i++){
	var newX = irandom_range(0, room_width);
	var newY = irandom_range(0, room_height-100);
	instance_create_layer(newX, newY, "Instances", placementArea);
}

//filling placement areas with trees
density = 40;

for(var i = 32; i < room_width-32; i += 32){
	for(var j = 64; j < room_height-100; j += 32){
		var xOffset = irandom_range(-16, 16);
		var yOffset = irandom_range(-16, 16);
		var roll = irandom_range(0, 100);
		if(roll <= density){
			if(position_meeting(i, j, placementArea)){
				instance_create_layer(i + xOffset, j + yOffset, "Instances", tree1);
			}
		}
	}
}

//place small trees on edges
density = 50;

for(var i = 32; i < room_width-32; i += 16){
	for(var j = 0; j < room_height-100; j += 16){
		var xOffset = irandom_range(-16, 16);
		var yOffset = irandom_range(-16, 16);
		var roll = irandom_range(0, 100);
		var newTree = noone;
		if(roll <= density){
			if(position_meeting(i, j, ponds)){
				if(!position_meeting(i - 16, j, ponds)){
					newTree = instance_create_layer(i + xOffset, j + yOffset, "Instances", tree1);
				}
				if(!position_meeting(i + 16, j, ponds)){
					newTree = instance_create_layer(i + xOffset, j + yOffset, "Instances", tree1);
				}
				if(!position_meeting(i, j - 16, ponds)){
					newTree = instance_create_layer(i + xOffset, j + yOffset, "Instances", tree1);
				}
				if(!position_meeting(i, j + 16, ponds)){
					newTree = instance_create_layer(i + xOffset, j + yOffset, "Instances", tree1);
				}
				if(newTree != noone){
					var scale = 1;
					newTree.image_xscale = scale;
					newTree.image_yscale = scale;
				}
			}
		}
	}
}

with(placementArea){
	instance_destroy(self);
}





