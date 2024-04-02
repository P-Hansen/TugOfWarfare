/// @description 15 min game over

with(unitClass){
	instance_destroy(self);
}


drawFlag = true;
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

alarm[6] = 1;