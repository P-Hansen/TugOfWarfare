/// @description Insert description here

//random army
roll = irandom_range(1, 5);
switch(roll){
	case 1:
		buttons = global.giantBuildings;
		class = giantClass;
		classBuildings = giantBuildingClass;
	break;
	
	case 2:
		buttons = global.goblinBuldings;
		class = goblinClass;
		classBuildings = goblinBuildingClass;
	break;
	
	case 3:
		buttons = global.merfolkBuildings;
		class = merfolkClass;
		classBuildings = merfolkBuildingClass;
	break;
	
	case 4:
		buttons = global.orcBuildings;
		class = orcClass;
		classBuildings = orcBuildingClass;
	break;
	
	default:
		buttons = global.humanBuildings;
		class = humanClass;
		classBuildings = humanBuildingClass;
	break;
}

archer = choose(sprHumanArcher, sprHumanCrossbowmen);
archer2 = choose(sprMerfolkScout, sprOrcWolfRider);
mage = choose(sprHumanPriest, sprOrcWarlock);
frontLine = choose(sprHumanSwordsmen, sprGoblinWarrior, sprOrcWarrior);
tank = choose(sprHumanKnight, sprOrcBarbarian);

selected = false;
animationSpeed = 0;
alarm[1] = room_speed/5;

