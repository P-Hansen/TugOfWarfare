/// @description Insert description here

// Inherit the parent event
event_inherited();

if(global.playerFaction == giantClass){
	enemy = global.enemyFaction;
	enemyBuildings = global.enemyBuildings;
	enemySide = 0;
} else {
	enemySide = 180;
}

direction = enemySide;