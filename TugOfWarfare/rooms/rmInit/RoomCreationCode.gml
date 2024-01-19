randomize();

enum status {
	active,
	disabled
}

global.GRIDSIZE = 16;
global.goldTotal = 500;
global.playerFaction = humanClass;
global.availableBuildings = [humanArcherButton, humanCrossbowmenButton, humanKnightButton, humanPriestButton, humanSwordsmenButton];

room_goto(rmBattlefield1);