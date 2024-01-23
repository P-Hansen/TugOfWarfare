randomize();

enum status {
	active,
	disabled
}

global.GRIDSIZE = 16;
global.goldTotal = 200;

global.humanBuildings = [humanArcherButton, humanCrossbowmenButton, humanKnightButton, humanPriestButton, humanSwordsmenButton];
global.merfolkBuildings = [MerfolkAquamancerButton, MerfolkImpalerButton, MerfolkScoutButton, MerfolkSirenButton, MerfolkWaterElementalButton]
global.orcBuildings = [orcBarbarianButton, orcShamenButton, orcWarlockButton, orcWarriorButton, orcWolfRiderButton];

global.playerFaction = humanClass;
global.playerBuildings = humanBuildingClass;
global.availableBuildings = global.humanBuildings;

global.enemyFaction = giantClass;
global.enemyBuildings = giantBuildingClass;



room_goto(rmFactionSelect);