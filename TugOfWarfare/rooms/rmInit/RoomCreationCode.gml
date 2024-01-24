randomize();

enum status {
	active,
	disabled
}

global.GRIDSIZE = 16;
global.goldTotal = 200;
global.timer = 10;

global.humanBuildings = [humanArcherButton, humanCrossbowmenButton, humanKnightButton, humanPriestButton, humanSwordsmenButton];
global.merfolkBuildings = [MerfolkAquamancerButton, MerfolkImpalerButton, MerfolkScoutButton, MerfolkSirenButton, MerfolkWaterElementalButton]
global.orcBuildings = [orcBarbarianButton, orcShamenButton, orcWarlockButton, orcWarriorButton, orcWolfRiderButton];
global.goblinBuldings = [goblinArcherButton, goblinGruntButton, goblinRogueButton, goblinSapperButton, goblinWarriorButton];
global.giantBuildings = [giantEttinMageButton, giantHarpyButton, giantHillGiantButton, giantOgerButton, giantStoneGiantButton];

global.playerFaction = humanClass;
global.playerBuildings = humanBuildingClass;
global.availableBuildings = global.humanBuildings;

global.enemyFaction = noone;
global.enemyBuildings = noone;
global.enemyAvailableBuildings = [];



room_goto(rmFactionSelect);