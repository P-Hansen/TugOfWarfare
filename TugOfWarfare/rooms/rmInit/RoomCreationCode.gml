randomize();

enum status {
	active,
	disabled
}

global.GRIDSIZE = 16;
global.goldTotal = 200;
global.enemyGoldTotal = 0;
global.timer = 10;

global.humanBuildings = [humanArcherButton, humanCrossbowmenButton, humanKnightButton, humanPriestButton, humanSwordsmenButton];
global.merfolkBuildings = [MerfolkAquamancerButton, MerfolkImpalerButton, MerfolkScoutButton, MerfolkSirenButton, MerfolkWaterElementalButton]
global.orcBuildings = [orcBarbarianButton, orcShamenButton, orcWarlockButton, orcWarriorButton, orcWolfRiderButton];
global.goblinBuldings = [goblinArcherButton, goblinGruntButton, goblinRogueButton, goblinSapperButton, goblinWarriorButton];
global.giantBuildings = [giantEttinMageButton, giantHarpyButton, giantHillGiantButton, giantOgerButton, giantStoneGiantButton];
global.elfBuildings = [elfArcherButton, elfBlademasterButton, elfHealerButton, elfLordButton, elfMageButton];
global.skeletonBuildings = [skeletonDeathKnightButton, skeletonGolemButton, skeletonMageButton, skeletonWarriorButton, skeletonMinionButton];

global.playerFaction = [humanClass];
global.playerBuildings = [humanBuildingClass];
global.availableBuildings = global.humanBuildings;
global.playerRelics = [thunderStone, treasureChest];

global.enemyFaction = [];
global.enemyBuildings = [];
global.enemyAvailableBuildings = [];
global.enemyRelics = [thunderStone];


room_goto(rmFactionSelect);