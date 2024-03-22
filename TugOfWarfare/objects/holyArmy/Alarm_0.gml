/// @description Insert description here

if(owner == "player"){
	array_push(global.playerFaction, angel);
	enemy = global.enemyFaction;
	enemyBuildings = global.enemyBuildings;
	ownersUnits = global.playerFaction;
	ownersBuildings = global.playerBuildings;
	startingX = -10
} else {
	array_push(global.enemyFaction, angel);
	startingX = room_width + 10;
}
