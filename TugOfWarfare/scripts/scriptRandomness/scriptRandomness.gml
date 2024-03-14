

function randomArmy(){
	global.enemyFaction = global.playerFaction;
	//random army
	while(global.playerFaction[0] == global.enemyFaction[0]){
		roll = irandom_range(1, 7);
		switch(roll){
			case 1:
				global.enemyFaction = [giantClass];
				global.enemyBuildings = [giantBuildingClass];
				global.enemyAvailableBuildings = [giantOgerBuilding, giantEttinMageBuilding, giantHarpyBuilding, giantHillGiantBuilding, giantStoneGiantBuilding];
			break;
	
			case 2:
				global.enemyFaction  = [goblinClass];
				global.enemyBuildings = [goblinBuildingClass];
				global.enemyAvailableBuildings = [goblinGruntBuilding, goblinArcherBuilding, goblinRogueBuilding, goblinSapperBuilding, goblinWarriorBuilding];
			break;
	
			case 3:
				global.enemyFaction  = [merfolkClass];
				global.enemyBuildings = [merfolkBuildingClass];
				global.enemyAvailableBuildings = [merfolkWaterElementalBuilding, merfolkAquamancerBuilding, merfolkImpalerBuilding, merfolkScoutBuilding, merfolkSirenBuilding];
			break;
	
			case 4:
				global.enemyFaction  = [orcClass];
				global.enemyBuildings = [orcBuildingClass];
				global.enemyAvailableBuildings = [orcBarbarianBuilding, orcShamenBuilding, orcWarlockBuilding, orcWarriorBuilding, orcWolfRiderBuilding];
			break;
		
			case 5:
				global.enemyFaction  = [elfClass];
				global.enemyBuildings = [elfBuildingClass];
				global.enemyAvailableBuildings = [elfLordBuilding, elfArcherBuilding, elfBlademasterBuilding, elfHealerBuilding, elfMageBuilding];
			break;
		
			case 6:
				global.enemyFaction  = [skeletonClass];
				global.enemyBuildings = [skeletonBuildingClass];
				global.enemyAvailableBuildings = [skeletonGolemBuilding, skeletonDeathKnightBuilding, skeletonMageBuilding, skeletonMinionBuilding, skeletonWarriorBuilding];
			break;
	
			default:
				global.enemyFaction  = [humanClass];
				global.enemyBuildings = [humanBuildingClass];
				global.enemyAvailableBuildings = [humanKnightBuilding, humanCatapultBuilding, humanCrossbownmanBuilding, humanPriestBuilding, humanSwordsmanBuilding];
			break;
		}
	}
}

function commas(str){
var len = string_length(str)

for (var i = len; i>0; i--){
	if (i mod 3 = len mod 3 && i != len){
		str = string_insert(",",str,i+1)
	}
}

return str;
}