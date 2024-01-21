randomize();

enum status {
	active,
	disabled
}

global.GRIDSIZE = 16;
global.goldTotal = 200;
global.playerFaction = humanClass;
global.playerBuildings = humanBuildingClass;
global.enemyFaction = goblinClass;
global.enemyBuildings = goblinBuildingClass;
global.availableBuildings = [humanArcherButton, humanCrossbowmenButton, humanKnightButton, humanPriestButton, humanSwordsmenButton];

room_goto(rmBattlefield1);