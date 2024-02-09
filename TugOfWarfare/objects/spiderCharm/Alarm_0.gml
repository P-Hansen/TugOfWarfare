/// @description Insert description here

if(owner == "player"){
	array_push(global.playerFaction, spider);
	enemy = global.enemyFaction;
	enemyBuildings = global.enemyBuildings;
	ownersUnits = global.playerFaction;
	ownersBuildings = global.playerBuildings;
	startingX = -10
} else {
	array_push(global.enemyFaction, spider);
	startingX = room_width + 10;
}
