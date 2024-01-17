/// @description creating units

for(var i = 3; i > 0; i--){
	var xOffset = random_range(-15, 15);
	var yOffset = random_range(-15, 15);
	instance_create_layer(x+xOffset, y+yOffset, layer, unit);
}

alarm[1] = room_speed*10;