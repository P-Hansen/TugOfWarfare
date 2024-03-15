/// @description match over

//win
if(global.roundStart == true){
	if(winFlag == false and instance_number(global.enemyBuildings[0]) <= 0){
		winFlag = true;
		alarm[2] = -1;
		if(global.round == 5){
			//clear out old relics
			for(var j = array_length(global.enemyRelics)-1; j >= 0; j--){
				var oldRelic = global.enemyRelics[j];
				instance_destroy(oldRelic);
				array_delete(global.enemyRelics, j, 1);
			}
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