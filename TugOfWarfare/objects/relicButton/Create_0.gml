/// @description Insert description here

image_xscale = 6;
image_yscale = 16;

array_shuffle_ext(global.availbleRelics);
item = global.availbleRelics[0];
array_delete(global.availbleRelics, 0, 1);

itemSprite = object_get_sprite(item);

switch (item) {
	case thunderStone:
		itemName = "Thunder Stone";
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
		itemDescription = "units deal 10% more damage.";
	break;
	
	
	default:
		itemName = "-";
		itemDescription = "...";
}