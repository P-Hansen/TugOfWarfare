/// @description spawn timer

global.timer -= 1;

if(global.timer == -1){
	with(buildingClass){
		for(var i = numberPerSpawn; i > 0; i--){
		var xOffset = random_range(-15, 15);
		var yOffset = random_range(-15, 15);
		instance_create_layer(x+xOffset, y+yOffset, "instances", unit);
		}
	}
	global.timer = 20;
}


alarm[2] = room_speed*1;