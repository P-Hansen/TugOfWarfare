/// @description Insert description here

image_xscale = 6;
image_yscale = 16;

array_shuffle_ext(global.availbleRelics);
item = global.availbleRelics[0];
array_delete(global.availbleRelics, 0, 1);

itemSprite = object_get_sprite(item);

switch (item) {
	case thunderStone:
		itemName = "The Thunder Stone";
		itemDescription = "The mighty thunderstone strikes down an enemy at random every 15 seconds.";
	break;
	
	case treasureChest:
		itemName = "War Chest";
		itemDescription = "Generates +1 gold per second.";
	break;

	case goblinConscripts:
		itemName = "Goblin Conscripts";
		itemDescription = "A goblin conscript will spawn along side your units at each building.";
	break;
	
	case crabGuards:
		itemName = "Crab Guards";
		itemDescription = "Crabs will spawn around your buildings and protect them.";
	break;
	
	case HireASquire:
		itemName = "Squires";
		itemDescription = "Hire squires for your army that spawn from each building.";
	break;
	
	case attackUpgrade:
		itemName = "Sharpened steel";
		itemDescription = "Units deal 10% more damage.";
	break;
	
	case defenceUpgrade:
		itemName = "Improved Armour";
		itemDescription = "Units gain 10% more Hp.";
	break;
	
	case guardTowers:
		itemName = "Guard Towers";
		itemDescription = "Three guard towers spawn on your side of the map. They have 1000hp and fire 60 damage arrows every 1.5 seconds.";
	break;
	
	case brambleSeeds:
		itemName = "Bramble Seeds";
		itemDescription = "Start with a wall of brambles that damage and slow enemy units. Brambles slowly grow back and spread towards the enemy";
	break;
	
	case spiderCharm:
		itemName = "Waves of Spiders";
		itemDescription = "Two spiders spawn for each building you control every 30 seconds.";
	break;
	
	case blizzardStone:
		itemName = "The Blizzard Stone";
		itemDescription = "Every 17 seconds a mighty blizzard covers the screen and does 60 damge to all units.";
	break;
	
	case berserkerCharm:
		itemName = "Berserker Charm";
		itemDescription = "25% chance your units will spawn as berserkers. Double attack speed but half Health.";
	break;
	
	case stoneConstruction:
		itemName = "Stone Construction";
		itemDescription = "Buildings are created with double the hp.";
	break;

	case guardWolves:
		itemName = "Guard Wolves";
		itemDescription = "Wolves will spawn around your buildings and protect them.";
	break;
	
	default:
		itemName = "-";
		itemDescription = "...";
}