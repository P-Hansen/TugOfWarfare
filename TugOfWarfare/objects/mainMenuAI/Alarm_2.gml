/// @description spawn timer

global.timer -= 1;

if(global.timer == -1){
	with(buildingClass){
		//giant half spawn
		if(asset_has_tags(object_index, "halfSpawn", asset_object)){
			if(spawn == true){
				for(var i = numberPerSpawn; i > 0; i--){
					var xOffset = random_range(-15, 15);
					var yOffset = random_range(-15, 15);
					var newUnit = instance_create_layer(x+xOffset, y+yOffset, "instances", unit);
					newUnit.owner = owner;
					if(owner == "player"){
						global.unitsBuilt += 1;
					}
					//adding status effects to spawned units
					addStatus(newUnit, owner);					
				}
			}
			spawn = !spawn;
		//skeleton random of 2 minion spawn
		} else if (asset_has_tags(object_index, "skeletonMinionSpawn", asset_object)){
			for(var i = numberPerSpawn; i > 0; i--){
				var xOffset = random_range(-15, 15);
				var yOffset = random_range(-15, 15);
				var roll = irandom_range(0, 1);
				unit = units[roll];
				var newUnit = instance_create_layer(x+xOffset, y+yOffset, "instances", unit);
				newUnit.owner = owner;
				if(owner == "player"){
					global.unitsBuilt += 1;
				}
				//adding status effects to spawned units
				addStatus(newUnit, owner);		
			}
				
		//caged unit spawn
		} else if (asset_has_tags(object_index, "cagedUnit", asset_object)){
			for(var i = numberPerSpawn; i > 0; i--){
				var xOffset = random_range(-15, 15);
				var yOffset = random_range(-15, 15);
				var newUnit = instance_create_layer(x+xOffset, y+yOffset, "instances", unit);
				newUnit.owner = owner;
				if(owner == "player"){
					global.unitsBuilt += 1;
				}
				//adding status effects to spawned units
				addStatus(newUnit, owner);		
				
				if(owner == "player"){
					newUnit.owner = "player";
					newUnit.enemy = global.enemyFaction;
					newUnit.enemyBuildings = global.enemyBuildings;
					newUnit.direction = 0;
				} else {
					newUnit.owner = "enemy";
					newUnit.direction = 180;
				}
			}
		//regular spawn
		} else {
			for(var i = numberPerSpawn; i > 0; i--){
				var xOffset = random_range(-15, 15);
				var yOffset = random_range(-15, 15);
				var newUnit = instance_create_layer(x+xOffset, y+yOffset, "instances", unit);
				newUnit.owner = owner;
				if(owner == "player"){
					global.unitsBuilt += 1;
				}
				//adding status effects to spawned units
				addStatus(newUnit, owner);		
			}
		}
		
		//additional units (crabs, goblins, squires)
		if(owner == "player"){
			//asset_has_tags(object_index, "unitSpawning", asset_object)
			//goblin conscripts
			if(relicArrayContains(global.playerRelics, goblinConscripts)){
					var xOffset = random_range(-15, 15);
					var yOffset = random_range(-15, 15);
					var enemySide = 0;
					var newUnit = instance_create_layer(x + xOffset, y + yOffset, "instances", goblinConscript);
					newUnit.owner = owner;
					if(owner == "player"){
						global.unitsBuilt += 1;
					}
					newUnit.enemy = global.enemyFaction;
					newUnit.enemyBuildings = global.enemyBuildings;
					newUnit.direction = enemySide;
					//adding status effects to spawned units
					addStatus(newUnit, owner);
			}
			//crabs!!
			if(relicArrayContains(global.playerRelics, crabGuards)){
					var xOffset = random_range(-15, 15);
					var yOffset = random_range(-15, 15);
					var enemySide = 0;
					var newUnit = instance_create_layer(x + xOffset, y + yOffset, "instances", crab);
					newUnit.owner = owner;
					if(owner == "player"){
						global.unitsBuilt += 1;
					}
					newUnit.enemy = global.enemyFaction;
					newUnit.enemyBuildings = global.enemyBuildings;
					newUnit.direction = enemySide;
					//adding status effects to spawned units
					addStatus(newUnit, owner);
			}
			//squires
			if(relicArrayContains(global.playerRelics, HireASquire)){
					var xOffset = random_range(-15, 15);
					var yOffset = random_range(-15, 15);
					var enemySide = 0;
					var newUnit = instance_create_layer(x + xOffset, y + yOffset, "instances", squire);
					newUnit.owner = owner;
					if(owner == "player"){
						global.unitsBuilt += 1;
					}
					newUnit.enemy = global.enemyFaction;
					newUnit.enemyBuildings = global.enemyBuildings;
					newUnit.direction = enemySide;
					//adding status effects to spawned units
					addStatus(newUnit, owner);
			}
			//wolves
			if(relicArrayContains(global.playerRelics, guardWolves)){
					var xOffset = random_range(-15, 15);
					var yOffset = random_range(-15, 15);
					var enemySide = 0;
					var newUnit = instance_create_layer(x + xOffset, y + yOffset, "instances", wolf);
					newUnit.owner = owner;
					if(owner == "player"){
						global.unitsBuilt += 1;
					}
					newUnit.enemy = global.enemyFaction;
					newUnit.enemyBuildings = global.enemyBuildings;
					newUnit.direction = enemySide;
					//adding status effects to spawned units
					addStatus(newUnit, owner);
			}
		}
		
		if(owner == "enemy"){
			//goblins
			if(relicArrayContains(global.enemyRelics, goblinConscripts)){
					var xOffset = random_range(-15, 15);
					var yOffset = random_range(-15, 15);
					var enemySide = 180;
					var newUnit = instance_create_layer(x + xOffset, y + yOffset, "instances", goblinConscript);
					newUnit.owner = owner;
					newUnit.direction = enemySide;
					newUnit.enemy = global.playerFaction;
					newUnit.enemyBuildings = global.playerBuildings;
					//adding status effects to spawned units
					addStatus(newUnit, owner);
			}
			//crabs
			if(relicArrayContains(global.enemyRelics, crabGuards)){
					var xOffset = random_range(-15, 15);
					var yOffset = random_range(-15, 15);
					var enemySide = 180;
					var newUnit = instance_create_layer(x + xOffset, y + yOffset, "instances", crab);
					newUnit.owner = owner;
					newUnit.direction = enemySide;
					newUnit.enemy = global.playerFaction;
					newUnit.enemyBuildings = global.playerBuildings;
					//adding status effects to spawned units
					addStatus(newUnit, owner);
			}
			//squires
			if(relicArrayContains(global.enemyRelics, HireASquire)){
					var xOffset = random_range(-15, 15);
					var yOffset = random_range(-15, 15);
					var enemySide = 180;
					var newUnit = instance_create_layer(x + xOffset, y + yOffset, "instances", squire);
					newUnit.owner = owner;
					newUnit.direction = enemySide;
					newUnit.enemy = global.playerFaction;
					newUnit.enemyBuildings = global.playerBuildings;
					//adding status effects to spawned units
					addStatus(newUnit, owner);
			}
			//wolves
			if(relicArrayContains(global.enemyRelics, guardWolves)){
					var xOffset = random_range(-15, 15);
					var yOffset = random_range(-15, 15);
					var enemySide = 180;
					var newUnit = instance_create_layer(x + xOffset, y + yOffset, "instances", wolf);
					newUnit.owner = owner;
					newUnit.direction = enemySide;
					newUnit.enemy = global.playerFaction;
					newUnit.enemyBuildings = global.playerBuildings;
					//adding status effects to spawned units
					addStatus(newUnit, owner);
			}
		}
		
	}
	global.timer = 20;
}


alarm[2] = room_speed*1;