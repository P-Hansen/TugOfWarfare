/// @description creating units

for(var i = numberPerSpawn; i > 0; i--){
	var xOffset = random_range(-15, 15);
	var yOffset = random_range(-15, 15);
	var roll = irandom_range(0, 1);
	unit = units[roll];
	instance_create_layer(x+xOffset, y+yOffset, "instances", unit);
}

alarm[1] = cooldown;