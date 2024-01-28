/// @description Insert description here

// % chance to spawn grass
density = 5;

for(var i = 32; i < room_width-32; i += 32){
	for(var j = 64; j < room_height-100; j += 32){
		var xOffset = irandom_range(-16, 16);
		var yOffset = irandom_range(-16, 16);
		var roll = irandom_range(0, 100);
		if(roll <= density){
			instance_create_layer(i + xOffset, j + yOffset, "Instances", grass1);
		}
	}
}






