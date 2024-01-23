randomize();

enum status {
	active,
	disabled
}

global.GRIDSIZE = 16;
global.goldTotal = 200;
global.playerFaction = humanClass;
global.playerBuildings = humanBuildingClass;
global.enemyFaction = giantClass;
global.enemyBuildings = giantBuildingClass;
global.availableBuildings = [humanArcherButton, humanCrossbowmenButton, humanKnightButton, humanPriestButton, humanSwordsmenButton];

room_goto(rmFactionSelect);