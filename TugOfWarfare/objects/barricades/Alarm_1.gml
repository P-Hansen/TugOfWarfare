/// @description Insert description here

if(owner == "player"){
	enemy = global.enemyFaction;
	enemyBuildings = global.enemyBuildings;

	ownersUnits = global.playerFaction;
	ownersBuildings = global.playerBuildings;
	_x = 450;
	array_push(global.playerBuildings, building);
/*
	enemy = global.enemyFaction;
	enemyBuildings = global.enemyBuildings;

	ownersUnits = global.playerFaction;
	ownersBuildings = global.playerBuildings;
*/
} else {
	_x = room_width - 450;
	array_push(global.enemyBuildings, building);
}