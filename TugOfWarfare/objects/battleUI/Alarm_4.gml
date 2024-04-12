/// @description round start

if(instance_exists(global.playerBuildings[0])){
	global.roundStart = true;
	alarm[6] = room_speed*900;
} else {
	global.timer = 10;
	alarm[4] = 5;
}
