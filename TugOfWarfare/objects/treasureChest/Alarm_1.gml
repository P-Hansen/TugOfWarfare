/// @description +1 gold per second

if(owner == "player"){
	if(global.roundStart == true){
		global.goldTotal += 1;
	}
} else {
	if(global.roundStart == true){
		global.enemyGoldTotal += 1;
	}
}

alarm[1] = room_speed*1;