/// @description match over

//win
if(winFlag == false and instance_number(global.enemyBuildings[0]) <= 0){
	winFlag = true;
	alarm[2] = -1;
	randomArmy();
	instance_create_layer(x, y, "weaponLayer", relicPick);
}