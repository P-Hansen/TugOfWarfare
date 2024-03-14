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
					if(owner == "player"){
						global.unitsBuilt += 1;
					}
					//adding status effects to spawned units
					if(arrayContainsTag(global.playerRelics, "statusEffect")){
						if(owner == "player"){
							newUnit.owner = "player";
							var statusEffectsArray = arrayReturnTagItems(global.playerRelics, "statusEffect");
							for(var j = 0; j < array_length(statusEffectsArray); j++){
								var effect = instance_create_depth(x, y, newUnit.depth-1, statusEffectsArray[j].effect);
								effect.onHit(newUnit);
							}
						}
					} else if (arrayContainsTag(global.enemyRelics, "statusEffect")){
						if(owner == "enemy"){
							newUnit.owner = "enemy";
							var statusEffectsArray = arrayReturnTagItems(global.enemyRelics, "statusEffect");
							for(var j = 0; j < array_length(statusEffectsArray); j++){
								var effect = instance_create_depth(x, y, newUnit.depth-1, statusEffectsArray[j].effect);
								effect.onHit(newUnit);
							}
						}
					}
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
				if(owner == "player"){
					global.unitsBuilt += 1;
				}
				//adding status effects to spawned units
				if(arrayContainsTag(global.playerRelics, "statusEffect")){
					if(owner == "player"){
						newUnit.owner = "player";
						var statusEffectsArray = arrayReturnTagItems(global.playerRelics, "statusEffect");
						for(var j = 0; j < array_length(statusEffectsArray); j++){
							var effect = instance_create_depth(x, y, newUnit.depth-1, statusEffectsArray[j].effect);
							effect.onHit(newUnit);
						}
					}
				} else if (arrayContainsTag(global.enemyRelics, "statusEffect")){
					if(owner == "enemy"){
						newUnit.owner = "enemy";
						var statusEffectsArray = arrayReturnTagItems(global.enemyRelics, "statusEffect");
						for(var j = 0; j < array_length(statusEffectsArray); j++){
							var effect = instance_create_depth(x, y, newUnit.depth-1, statusEffectsArray[j].effect);
							effect.onHit(newUnit);
						}
					}
				}
			}
				
		//caged unit spawn
		} else if (asset_has_tags(object_index, "cagedUnit", asset_object)){
			for(var i = numberPerSpawn; i > 0; i--){
				var xOffset = random_range(-15, 15);
				var yOffset = random_range(-15, 15);
				var newUnit = instance_create_layer(x+xOffset, y+yOffset, "instances", unit);
				if(owner == "player"){
					global.unitsBuilt += 1;
				}
				//adding status effects to spawned units
				if(arrayContainsTag(global.playerRelics, "statusEffect")){
					if(owner == "player"){
						newUnit.owner = "player";
						var statusEffectsArray = arrayReturnTagItems(global.playerRelics, "statusEffect");
						for(var j = 0; j < array_length(statusEffectsArray); j++){
							var effect = instance_create_depth(x, y, newUnit.depth-1, statusEffectsArray[j].effect);
							effect.onHit(newUnit);
						}
					}
				} else if (arrayContainsTag(global.enemyRelics, "statusEffect")){
					if(owner == "enemy"){
						newUnit.owner = "enemy";
						var statusEffectsArray = arrayReturnTagItems(global.enemyRelics, "statusEffect");
						for(var j = 0; j < array_length(statusEffectsArray); j++){
							var effect = instance_create_depth(x, y, newUnit.depth-1, statusEffectsArray[j].effect);
							effect.onHit(newUnit);
						}
					}
				}
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
				if(owner == "player"){
					global.unitsBuilt += 1;
				}
				//adding status effects to spawned units
				if(arrayContainsTag(global.playerRelics, "statusEffect")){
					if(owner == "player"){
						newUnit.owner = "player";
						var statusEffectsArray = arrayReturnTagItems(global.playerRelics, "statusEffect");
						for(var j = 0; j < array_length(statusEffectsArray); j++){
							var effect = instance_create_depth(x, y, newUnit.depth-1, statusEffectsArray[j].effect);
							effect.onHit(newUnit);
						}
					}
				} else if (arrayContainsTag(global.enemyRelics, "statusEffect")){
					if(owner == "enemy"){
						newUnit.owner = "enemy";
						var statusEffectsArray = arrayReturnTagItems(global.enemyRelics, "statusEffect");
						for(var j = 0; j < array_length(statusEffectsArray); j++){
							var effect = instance_create_depth(x, y, newUnit.depth-1, statusEffectsArray[j].effect);
							effect.onHit(newUnit);
						}
					}
				}
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
					if(owner == "player"){
						global.unitsBuilt += 1;
					}
					newUnit.enemy = global.enemyFaction;
					newUnit.enemyBuildings = global.enemyBuildings;
					newUnit.direction = enemySide;
					newUnit.owner = "player";
			}
			//crabs!!
			if(relicArrayContains(global.playerRelics, crabGuards)){
					var xOffset = random_range(-15, 15);
					var yOffset = random_range(-15, 15);
					var enemySide = 0;
					var newUnit = instance_create_layer(x + xOffset, y + yOffset, "instances", crab);
					if(owner == "player"){
						global.unitsBuilt += 1;
					}
					newUnit.enemy = global.enemyFaction;
					newUnit.enemyBuildings = global.enemyBuildings;
					newUnit.direction = enemySide;
					newUnit.owner = "player";
			}
			//squires
			if(relicArrayContains(global.playerRelics, HireASquire)){
					var xOffset = random_range(-15, 15);
					var yOffset = random_range(-15, 15);
					var enemySide = 0;
					var newUnit = instance_create_layer(x + xOffset, y + yOffset, "instances", squire);
					if(owner == "player"){
						global.unitsBuilt += 1;
					}
					newUnit.enemy = global.enemyFaction;
					newUnit.enemyBuildings = global.enemyBuildings;
					newUnit.direction = enemySide;
					newUnit.owner = "player";
			}
			//wolves
			if(relicArrayContains(global.playerRelics, guardWolves)){
					var xOffset = random_range(-15, 15);
					var yOffset = random_range(-15, 15);
					var enemySide = 0;
					var newUnit = instance_create_layer(x + xOffset, y + yOffset, "instances", wolf);
					if(owner == "player"){
						global.unitsBuilt += 1;
					}
					newUnit.enemy = global.enemyFaction;
					newUnit.enemyBuildings = global.enemyBuildings;
					newUnit.direction = enemySide;
					newUnit.owner = "player";
			}
		}
		
		if(owner == "enemy"){
			//goblins
			if(relicArrayContains(global.enemyRelics, goblinConscripts)){
					var xOffset = random_range(-15, 15);
					var yOffset = random_range(-15, 15);
					var enemySide = 180;
					var newUnit = instance_create_layer(x + xOffset, y + yOffset, "instances", goblinConscript);
					newUnit.direction = enemySide;
					newUnit.owner = "enemy";
			}
			//crabs
			if(relicArrayContains(global.enemyRelics, crabGuards)){
					var xOffset = random_range(-15, 15);
					var yOffset = random_range(-15, 15);
					var enemySide = 180;
					var newUnit = instance_create_layer(x + xOffset, y + yOffset, "instances", crab);
					newUnit.direction = enemySide;
					newUnit.owner = "enemy";
			}
			//squires
			if(relicArrayContains(global.enemyRelics, HireASquire)){
					var xOffset = random_range(-15, 15);
					var yOffset = random_range(-15, 15);
					var enemySide = 180;
					var newUnit = instance_create_layer(x + xOffset, y + yOffset, "instances", squire);
					newUnit.direction = enemySide;
					newUnit.owner = "enemy";
			}
			//wolves
			if(relicArrayContains(global.enemyRelics, guardWolves)){
					var xOffset = random_range(-15, 15);
					var yOffset = random_range(-15, 15);
					var enemySide = 180;
					var newUnit = instance_create_layer(x + xOffset, y + yOffset, "instances", wolf);
					newUnit.direction = enemySide;
					newUnit.owner = "enemy";
			}
		}
			
	}
	global.timer = 20;
}


alarm[2] = room_speed*1;