/// @description Insert description here

//random army
while(global.playerFaction[0] == global.enemyFaction[0]){
	roll = irandom_range(1, 7);
	switch(roll){
		case 1:
			global.enemyFaction = [giantClass];
			global.enemyBuildings = [giantBuildingClass];
			global.enemyAvailableBuildings = [giantEttinMageBuilding, giantHarpyBuilding, giantHillGiantBuilding, giantOgerBuilding, giantStoneGiantBuilding];
		break;
	
		case 2:
			global.enemyFaction  = [goblinClass];
			global.enemyBuildings = [goblinBuildingClass];
			global.enemyAvailableBuildings = [goblinArcherBuilding, goblinGruntBuilding, goblinRogueBuilding, goblinSapperBuilding, goblinWarriorBuilding];
		break;
	
		case 3:
			global.enemyFaction  = [merfolkClass];
			global.enemyBuildings = [merfolkBuildingClass];
			global.enemyAvailableBuildings = [merfolkAquamancerBuilding, merfolkImpalerBuilding, merfolkScoutBuilding, merfolkSirenBuilding, merfolkWaterElementalBuilding];
		break;
	
		case 4:
			global.enemyFaction  = [orcClass];
			global.enemyBuildings = [orcBuildingClass];
			global.enemyAvailableBuildings = [orcBarbarianBuilding, orcShamenBuilding, orcWarlockBuilding, orcWarriorBuilding, orcWolfRiderBuilding];
		break;
		
		case 5:
			global.enemyFaction  = [elfClass];
			global.enemyBuildings = [elfBuildingClass];
			global.enemyAvailableBuildings = [elfArcherBuilding, elfBlademasterBuilding, elfHealerBuilding, elfLordBuilding, elfMageBuilding];
		break;
		
		case 6:
			global.enemyFaction  = [skeletonClass];
			global.enemyBuildings = [skeletonBuildingClass];
			global.enemyAvailableBuildings = [skeletonDeathKnightBuilding, skeletonGolemBuilding, skeletonMageBuilding, skeletonMinionBuilding, skeletonWarriorBuilding];
		break;
	
		default:
			global.enemyFaction  = [humanClass];
			global.enemyBuildings = [humanBuildingClass];
			global.enemyAvailableBuildings = [humanArcherBuilding, humanCrossbownmanBuilding, humanKnightBuilding, humanPriestBuilding, humanSwordsmanBuilding];
		break;
	}
}

array_shuffle_ext(global.levels);
//room_goto(global.levels[0]);
room_goto(rmBattlefieldBlastedLand);
