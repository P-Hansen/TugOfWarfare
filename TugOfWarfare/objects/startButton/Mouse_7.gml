/// @description Insert description here

//random army
while(global.playerFaction == global.enemyFaction){
	roll = 1;//irandom_range(1, 5);
	switch(roll){
		case 1:
			global.enemyFaction = [giantClass];
			global.enemyBuildings = [giantBuildingClass];
			global.enemyAvailableBuildings = [giantEttinMageBuilding, giantHarpyBuilding, giantHillGiantBuilding, giantOgerBuilding, giantStoneGiantBuilding];
		break;
	
		case 2:
			global.enemyFaction  = goblinClass;
			global.enemyBuildings = goblinBuildingClass;
			global.enemyAvailableBuildings = [goblinArcherBuilding, goblinGruntBuilding, goblinRogueBuilding, goblinSapperBuilding, goblinWarriorBuilding];
		break;
	
		case 3:
			global.enemyFaction  = merfolkClass;
			global.enemyBuildings = merfolkBuildingClass;
			global.enemyAvailableBuildings = [merfolkAquamancerBuilding, merfolkImpalerBuilding, merfolkScoutBuilding, merfolkSirenBuilding, merfolkWaterElementalBuilding];
		break;
	
		case 4:
			global.enemyFaction  = orcClass;
			global.enemyBuildings = orcBuildingClass;
			global.enemyAvailableBuildings = [orcBarbarianBuilding, orcShamenBuilding, orcWarlockBuilding, orcWarriorBuilding, orcWolfRiderBuilding];
		break;
	
		default:
			global.enemyFaction  = humanClass;
			global.enemyBuildings = humanBuildingClass;
			global.enemyAvailableBuildings = [humanArcherBuilding, humanCrossbownmanBuilding, humanKnightBuilding, humanPriestBuilding, humanSwordsmanBuilding];
		break;
	}
}

room_goto(rmBattlefield1);

