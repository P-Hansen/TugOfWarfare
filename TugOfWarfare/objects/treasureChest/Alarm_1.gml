/// @description +1 gold per second

if(owner == "player"){
	global.goldTotal += 1;
} else {
	global.enemyGoldTotal += 1;
}

alarm[1] = room_speed*1;