randomize();

enum status {
	active,
	disabled
}

global.GRIDSIZE = 16;
global.goldTotal = 500;
global.availableBuildings = [];

room_goto(rmBattlefield1);