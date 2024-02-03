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
				}
			}
			spawn = !spawn;
		//skeleton random of 2 minion spawn
		} else if(asset_has_tags(object_index, "skeletonMinionSpawn", asset_object)){
			for(var i = numberPerSpawn; i > 0; i--){
				var xOffset = random_range(-15, 15);
				var yOffset = random_range(-15, 15);
				var roll = irandom_range(0, 1);
				unit = units[roll];
				var newUnit = instance_create_layer(x+xOffset, y+yOffset, "instances", unit);
			}
		//caged unit spawn
		} else if (asset_has_tags(object_index, "cagedUnit", asset_object)){
			for(var i = numberPerSpawn; i > 0; i--){
				var xOffset = random_range(-15, 15);
				var yOffset = random_range(-15, 15);
				var newUnit = instance_create_layer(x+xOffset, y+yOffset, "instances", unit);
				if(owner == "player"){
					newUnit.enemy = global.enemyFaction;
					newUnit.enemyBuildings = global.enemyBuildings;
					newUnit.direction = 0;
				} else {
					newUnit.direction = 180;
				}
			}
		//regular spawn
		} else {
			for(var i = numberPerSpawn; i > 0; i--){
				var xOffset = random_range(-15, 15);
				var yOffset = random_range(-15, 15);
				var newUnit = instance_create_layer(x+xOffset, y+yOffset, "instances", unit);
			}
		}
		
		//goblin conscripts
		if(relicArrayContains(global.playerRelics, goblinConscripts)){
			if(owner == "player"){
				var xOffset = random_range(-15, 15);
				var yOffset = random_range(-15, 15);
				var enemySide = 0;
				var newUnit = instance_create_layer(x + xOffset, y + yOffset, "instances", goblinConscript);
				newUnit.enemy = global.enemyFaction;
				newUnit.enemyBuildings = global.enemyBuildings;
				newUnit.direction = enemySide;
			}
		}
		if(relicArrayContains(global.enemyRelics, goblinConscripts)){
			if(owner == "enemy"){
				var xOffset = random_range(-15, 15);
				var yOffset = random_range(-15, 15);
				var enemySide = 180;
				var newUnit = instance_create_layer(x + xOffset, y + yOffset, "instances", goblinConscript);
				newUnit.direction = enemySide;
			}
		}
		
		//crabs!!
		if(relicArrayContains(global.playerRelics, crabGuards)){
			if(owner == "player"){
				var xOffset = random_range(-15, 15);
				var yOffset = random_range(-15, 15);
				var enemySide = 0;
				var newUnit = instance_create_layer(x + xOffset, y + yOffset, "instances", crab);
				newUnit.enemy = global.enemyFaction;
				newUnit.enemyBuildings = global.enemyBuildings;
				newUnit.direction = enemySide;
			}
		}
		if(relicArrayContains(global.enemyRelics, crabGuards)){
			if(owner == "enemy"){
				var xOffset = random_range(-15, 15);
				var yOffset = random_range(-15, 15);
				var enemySide = 180;
				var newUnit = instance_create_layer(x + xOffset, y + yOffset, "instances", crab);
				newUnit.direction = enemySide;
			}
		}
			
		//squires
		if(relicArrayContains(global.playerRelics, HireASquire)){
			if(owner == "player"){
				var xOffset = random_range(-15, 15);
				var yOffset = random_range(-15, 15);
				var enemySide = 0;
				var newUnit = instance_create_layer(x + xOffset, y + yOffset, "instances", squire);
				newUnit.enemy = global.enemyFaction;
				newUnit.enemyBuildings = global.enemyBuildings;
				newUnit.direction = enemySide;
			}
		}
		if(relicArrayContains(global.enemyRelics, HireASquire)){
			if(owner == "enemy"){
				var xOffset = random_range(-15, 15);
				var yOffset = random_range(-15, 15);
				var enemySide = 180;
				var newUnit = instance_create_layer(x + xOffset, y + yOffset, "instances", squire);
				newUnit.direction = enemySide;
			}
		}
		
		//attack upgrade buff needs to be generalized and moved into spawn loops
		if(relicArrayContains(global.playerRelics, attackUpgrade)){
			if(owner == "player"){
				var burn = instance_create_depth(x, y, newUnit.depth-1, statusEffectBurning);
				burn.onHit(newUnit);
			}
		} else if (relicArrayContains(global.enemyRelics, attackUpgrade)){
			if(owner == "enemy"){
				var burn = instance_create_depth(x, y, newUnit.depth-1, statusEffectBurning);
				burn.onHit(newUnit);
			}
		}
			
	}
	global.timer = 20;
}


alarm[2] = room_speed*1;