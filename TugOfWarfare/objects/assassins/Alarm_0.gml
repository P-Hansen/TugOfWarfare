/// @description Insert description here

if(owner == "player"){
	array_push(global.playerFaction, assassin);
	enemy = global.enemyFaction;
	enemyBuildings = global.enemyBuildings;
	ownersUnits = global.playerFaction;
	ownersBuildings = global.playerBuildings;
	startingX = -10
} else {
	array_push(global.enemyFaction, assassin);
	enemy = global.playerFaction;
	enemyBuildings = global.playerBuildings;
	ownersUnits = global.enemyFaction;
	ownersBuildings = global.enemyBuildings;
	startingX = room_width + 10;
}
