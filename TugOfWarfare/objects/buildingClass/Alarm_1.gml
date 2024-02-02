/// @description units are not created here
//they are created in the battle UI

for(var i = numberPerSpawn; i > 0; i--){
	var xOffset = random_range(-15, 15);
	var yOffset = random_range(-15, 15);
	instance_create_layer(x+xOffset, y+yOffset, "instances", unit);
}

alarm[1] = cooldown;