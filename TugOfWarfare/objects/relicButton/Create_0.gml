/// @description Insert description here

image_xscale = 6;
image_yscale = 16;

item = choose(thunderStone, treasureChest, goblinConscripts);
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
	
	
	
	
	default:
		itemName = "-";
		itemDescription = "...";
}