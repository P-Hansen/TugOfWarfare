/// @description Insert description here

if(owner == "player"){
	array_push(global.playerFaction, gnollPikeman);
	array_push(global.playerFaction, gnollWarrior);
	enemy = global.enemyFaction;
	enemyBuildings = global.enemyBuildings;
	ownersUnits = global.playerFaction;
	ownersBuildings = global.playerBuildings;
	startingX = -10
} else {
		array_push(global.enemyFaction, gnollPikeman);
	array_push(global.enemyFaction, gnollWarrior);
	startingX = room_width + 10;
}
