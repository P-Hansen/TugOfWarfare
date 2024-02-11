/// @description Insert description here

event_inherited();

enemy = noone;
depth = -y;

if(relicArrayContains(global.playerRelics, brambleSeeds)){
	enemy = global.enemyFaction;
} else if (relicArrayContains(global.enemyRelics, brambleSeeds)){
	enemy = global.playerFaction;
}

