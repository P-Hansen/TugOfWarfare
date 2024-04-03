/// @description Insert description here

//building with gold
if(global.enemyGoldTotal >= 100){

	//picking the building
	_x = irandom_range(room_width-200, room_width-48);
	_x = round(_x/global.GRIDSIZE)*global.GRIDSIZE;

	_y = irandom_range(175, room_height-48);
	_y = round(_y/global.GRIDSIZE)*global.GRIDSIZE;

	index = irandom_range(0, 4);
	var newBuilding = instance_create_layer(_x, _y, "Instances", global.enemyAvailableBuildings[index]);
	newBuilding.owner = "enemy";
	
	//picking the "player" building
	_x = irandom_range(48, 200);
	_x = round(_x/global.GRIDSIZE)*global.GRIDSIZE;

	_y = irandom_range(175, room_height-48);
	_y = round(_y/global.GRIDSIZE)*global.GRIDSIZE;

	index = irandom_range(0, 4);
	var newBuilding = instance_create_layer(_x, _y, "Instances", global.playerBuildings[index]);
	newBuilding.owner = "player";

	
	global.enemyGoldTotal -= 100;
}

if(instance_number(global.playerBuildings[0]) <= 0) or (instance_number(global.enemyBuildings[0]) <= 0){
	with(buildingClass){
		instance_destroy(self);
	}
	with(unitClass){
		instance_destroy(self);
	}
	randomArmy();
	global.enemyGoldTotal = 500;
}