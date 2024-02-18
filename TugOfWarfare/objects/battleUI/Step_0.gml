/// @description match over

//win
if(winFlag == false and instance_number(global.enemyBuildings[0]) <= 0){
	winFlag = true;
	alarm[2] = -1;
	randomArmy();
	instance_create_layer(x, y, "weaponLayer", relicPick);
}

//loss
if(roundStart == true){
	if(instance_number(global.playerBuildings[0]) <= 0){
		//room transition
		if(lossFlag == false){
			alarm[5] = room_speed*3;
		}
		lossFlag = true;
		alarm[2] = -1;
		
	}
}