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
global.round = 4;
global.availbleRelics = [guardTowers, guardWolves, crabGuards, stoneConstruction, berserkerCharm, blizzardStone, spiderCharm, brambleSeeds, thunderStone, attackUpgrade, defenceUpgrade, treasureChest, goblinConscripts, HireASquire, attackUpgrade, defenceUpgrade, treasureChest];
global.levels = [rmBattlefieldField, rmBattlefieldSwamp, rmBattlefieldForest, rmBattlefieldBlastedLand, rmBattlefieldBeach, rmBattlefieldFarmField, rmBattlefieldDesert, rmBattlefieldCastleRuins];

global.humanBuildings = [humanCatapultButton, humanCrossbowmenButton, humanKnightButton, humanPriestButton, humanSwordsmenButton];
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

room_goto(rmFactionSelect);
