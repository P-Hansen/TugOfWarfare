/// @description Insert description here
// Inherit the parent event
event_inherited();

if(array_contains(global.playerFaction, orcClass)){
	enemy = global.enemyFaction;
	enemyBuildings = global.enemyBuildings;
	enemySide = 0;
} else {
	enemySide = 180;
}

direction = enemySide;

scale = 2;
image_xscale = scale;
image_yscale = scale;