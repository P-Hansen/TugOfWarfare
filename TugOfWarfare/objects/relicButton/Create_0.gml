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
		itemDescription = "The mighty thunderstone strikes down an enemy at random every 15 seconds and the strorm move closer every strike.";
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
	
	case bounty:
		itemName = "Bounty";
		itemDescription = "+1 gold per enemy unit killed.";
	break;
	
	case trollBlood:
		itemName = "Trolls Blood";
		itemDescription = "Units heal 5 Hp per second.";
	break;
	
	case herbalism:
		itemName = "Herbalism";
		itemDescription = "+2 gold for each patch of grass built over.";
	break;
	
	case goldenScarabItem:
		itemName = "Golden Scarab";
		itemDescription = "50% chance on death to spawn a scarab that will avenge its master.";
	break;
	
	case flamingSwords:
		itemName = "Flaming Swords";
		itemDescription = "Any melee units that don't do splash damage will now light enemy units on fire when attacking.";
	break;
	
	case poisonArrows:
		itemName = "Poison Arrows";
		itemDescription = "Arrows and spears now deal half damage but poison enemy units.";
	break;
	
	case assassins:
		itemName = "Assassins";
		itemDescription = "Every 30 seconds spawn assassins for each mage or healer building the enenmy has and target those units.";
	break;
	
	case gnollWarpack:
		itemName = "Gnoll Warpack";
		itemDescription = "Every 30 seconds summon a Gnoll warpack equal to half the number of buildings you have constructed.";
	break;
	
	case fortress:
		itemName = "Fortress";
		itemDescription = "The first building you construct is now a fortress and will produce +1 units.";
	break;
	
	case witheringCurse:
		itemName = "Withering Curse";
		itemDescription = "Enemy units are cursed and loose 3 Hp per 0.75 seconds.";
	break;
	
	case undeadArmy:
		itemName = "Undead Army";
		itemDescription = "At 666 seconds summon an undead army of ghosts.";
	break;
	
	case holyArmy:
		itemName = "Holy Army";
		itemDescription = "At 11 minutes and 6 seconds summon an army of Angels.";
	break;
	
	case rangedAttackUpgrade:
		itemName = "Target Practice";
		itemDescription = "+15% ranged attack damage.";
	break;
	
	case platemail:
		itemName = "Platemail";
		itemDescription = "+20% Hp -5% attack speed.";
	break;
	
	case healingPotions:
		itemName = "Healing Potions";
		itemDescription = "Each unit gets 1 healing potion and when they are below 30% hp they use it to heal 50.";
	break;
	
	default:
		itemName = "-";
		itemDescription = "...";
}