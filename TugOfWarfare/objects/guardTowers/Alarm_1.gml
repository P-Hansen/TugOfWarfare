/// @description Insert description here

if(owner == "player"){
	array_push(global.playerBuildings, building);

	enemy = global.enemyFaction;
	enemyBuildings = global.enemyBuildings;

	ownersUnits = global.playerFaction;
	ownersBuildings = global.playerBuildings;
} else {
	array_push(global.enemyBuildings, building);
}