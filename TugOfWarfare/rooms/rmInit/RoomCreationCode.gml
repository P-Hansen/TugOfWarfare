randomize();

fontPixel = font_add_sprite_ext(sprPixelFont, "!#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[]^_abcdefghijklmnopqrstuvwxyz", true, -5);
draw_set_font(fontPixel);

enum status {
	active,
	disabled
}

audio_master_gain(0.5);
global.GRIDSIZE = 16;
global.goldTotal = 200;
global.enemyGoldTotal = 200;
global.timer = 10;
global.round = 1;
global.availbleRelics = [guardTowers, guardWolves, crabGuards, stoneConstruction, berserkerCharm, blizzardStone, spiderCharm, brambleSeeds, thunderStone, attackUpgrade, defenceUpgrade, treasureChest, goblinConscripts, HireASquire, attackUpgrade, defenceUpgrade, treasureChest, bounty];
global.levels = [rmBattlefieldField, rmBattlefieldSwamp, rmBattlefieldForest, rmBattlefieldBlastedLand, rmBattlefieldBeach, rmBattlefieldFarmField, rmBattlefieldDesert, rmBattlefieldCastleRuins];

global.humanBuildings = [humanCatapultButton, humanCrossbowmenButton, humanPriestButton, humanSwordsmenButton, humanKnightButton];
global.merfolkBuildings = [MerfolkSirenButton, MerfolkAquamancerButton, MerfolkScoutButton, MerfolkImpalerButton, MerfolkWaterElementalButton]
global.orcBuildings = [orcWarlockButton, orcWolfRiderButton, orcShamenButton, orcWarriorButton, orcBarbarianButton];
global.goblinBuldings = [goblinArcherButton, goblinRogueButton, goblinSapperButton, goblinWarriorButton, goblinGruntButton];
global.giantBuildings = [giantStoneGiantButton, giantHillGiantButton, giantEttinMageButton, giantHarpyButton,  giantOgerButton];
global.elfBuildings = [elfArcherButton, elfMageButton, elfHealerButton, elfBlademasterButton, elfLordButton];
global.skeletonBuildings = [skeletonDeathKnightButton, skeletonGolemButton, skeletonMageButton, skeletonWarriorButton, skeletonMinionButton];

global.playerFaction = [humanClass];
global.playerBuildings = [humanBuildingClass];
global.availableBuildings = global.humanBuildings;
global.playerRelics = [];

global.enemyFaction = [];
global.enemyBuildings = [];
global.enemyAvailableBuildings = [];
global.enemyRelics = [];
global.roundStart = false;

global.goldSpent = 0;
global.unitsBuilt = 0;
global.buildingsBuild = 0;
global.damageDone = 0;
global.unitsKilled = 0;
global.buildingsKilled = 0;

global.prefix = ["Mad ", "Sir. ", "Thundering ", "Commander ", "Prince ", "Icy "];
global.orcNames = ["Zugarod", "Ulmug", "Garthax", "Durz", "Tulgan", "Nargulg", "Glasha", "Shadbak", "Agrob", "Bolgar"];
global.suffix = [" the Hound Master", " the Slaver", " of the Wilds", " of the Deep", " the Negotiator", " the Spider Queen"];

//room_goto(rmFactionSelect);
room_goto(rmMainMenu);