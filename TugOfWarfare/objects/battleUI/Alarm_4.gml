/// @description round start

if(instance_exists(global.playerBuildings[0])){
	global.roundStart = true;
} else {
	global.timer = 10;
	alarm[4] = 5;
}
