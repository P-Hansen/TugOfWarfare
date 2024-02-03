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
					instance_create_layer(x+xOffset, y+yOffset, "instances", unit);
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
				instance_create_layer(x+xOffset, y+yOffset, "instances", unit);
			}
		//regular spawn
		} else {
			for(var i = numberPerSpawn; i > 0; i--){
				var xOffset = random_range(-15, 15);
				var yOffset = random_range(-15, 15);
				instance_create_layer(x+xOffset, y+yOffset, "instances", unit);
			}
		}
		
		//goblin conscripts
		if(relicArrayContains(global.playerRelics, goblinConscripts)){
			if(owner == "player"){
				var xOffset = random_range(-15, 15);
				var yOffset = random_range(-15, 15);
				var enemySide = 0;
				var goblin = instance_create_layer(x + xOffset, y + yOffset, "instances", goblinConscript);
				goblin.enemy = global.enemyFaction;
				goblin.enemyBuildings = global.enemyBuildings;
				goblin.direction = enemySide;
			}
		}
		if(relicArrayContains(global.enemyRelics, goblinConscripts)){
			if(owner == "enemy"){
				var xOffset = random_range(-15, 15);
				var yOffset = random_range(-15, 15);
				var enemySide = 180;
				var goblin = instance_create_layer(x + xOffset, y + yOffset, "instances", goblinConscript);
				goblin.direction = enemySide;
			}
		}
		
		//crabs!!
		if(relicArrayContains(global.playerRelics, crabGuards)){
			if(owner == "player"){
				var xOffset = random_range(-15, 15);
				var yOffset = random_range(-15, 15);
				var enemySide = 0;
				var goblin = instance_create_layer(x + xOffset, y + yOffset, "instances", crab);
				goblin.enemy = global.enemyFaction;
				goblin.enemyBuildings = global.enemyBuildings;
				goblin.direction = enemySide;
			}
		}
		if(relicArrayContains(global.enemyRelics, crabGuards)){
			if(owner == "enemy"){
				var xOffset = random_range(-15, 15);
				var yOffset = random_range(-15, 15);
				var enemySide = 180;
				var goblin = instance_create_layer(x + xOffset, y + yOffset, "instances", crab);
				goblin.direction = enemySide;
			}
		}
			
		//squires
		if(relicArrayContains(global.playerRelics, HireASquire)){
			if(owner == "player"){
				var xOffset = random_range(-15, 15);
				var yOffset = random_range(-15, 15);
				var enemySide = 0;
				var goblin = instance_create_layer(x + xOffset, y + yOffset, "instances", squire);
				goblin.enemy = global.enemyFaction;
				goblin.enemyBuildings = global.enemyBuildings;
				goblin.direction = enemySide;
			}
		}
		if(relicArrayContains(global.enemyRelics, HireASquire)){
			if(owner == "enemy"){
				var xOffset = random_range(-15, 15);
				var yOffset = random_range(-15, 15);
				var enemySide = 180;
				var goblin = instance_create_layer(x + xOffset, y + yOffset, "instances", squire);
				goblin.direction = enemySide;
			}
		}
		
	}
	global.timer = 20;
}


alarm[2] = room_speed*1;