/// @description Insert description here

global.enemyGoldTotal = 500;

//humans
global.playerFaction  = [humanClass];
global.playerBuildings = [humanKnightBuilding, humanCatapultBuilding, humanCrossbownmanBuilding, humanPriestBuilding, humanSwordsmanBuilding];

randomArmy();

alarm[2] = room_speed*1;
alarm[3] = room_speed*1;
index = 1;
_y = 0;
_x = 0;
global.timer = 1;
