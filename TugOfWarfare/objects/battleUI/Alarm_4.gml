/// @description round start

if(instance_exists(global.playerBuildings[0])){
	roundStart = true;
} else {
	alarm[4] = 5;
}
