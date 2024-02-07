randomize();

enum status {
	active,
	disabled
}

global.GRIDSIZE = 16;
global.goldTotal = 200;
global.enemyGoldTotal = 0;
global.timer = 10;
global.availbleRelics = [guardTowers, cagedUnit, brambleSeeds]// thunderStone//, attackUpgrade, defenceUpgrade, treasureChest, goblinConscripts, crabGuards, HireASquire];

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
global.playerRelics = [];

global.enemyFaction = [];
global.enemyBuildings = [];
global.enemyAvailableBuildings = [];
global.enemyRelics = [];


room_goto(rmFactionSelect);