/// @description match over

//win
if(global.roundStart == true){
	if(winFlag == false and instance_number(global.enemyBuildings[0]) <= 0){
		winFlag = true;
		alarm[2] = -1;
		if(global.round == 5){
			global.enemyRelics = [];
			room_goto(rmWin);
		} else {
			randomArmy();
			instance_create_layer(x, y, "weaponLayer", relicPick);
		}
	}
}

//loss
if(global.roundStart == true){
	if(instance_number(global.playerBuildings[0]) <= 0){
		//room transition
		if(lossFlag == false){
			alarm[5] = room_speed*3;
		}
		lossFlag = true;
		alarm[2] = -1;
		
	}
}