/// @description Insert description here

for(var i = 0; i < array_length(statusEffects); i++){
	statusEffects[i].onEnd(self, i);
}

if(enemy == global.playerFaction){
	var num = instance_create_depth(x, y, depth, goldNumber);
	//bounty money
	if(relicArrayContains(global.playerRelics, bounty)){
		drop = drop + 1;
	}

	num.amount = drop;
	global.goldTotal += drop;
	global.unitsKilled += 1;
	
	//golden scarab spawn
	if(relicArrayContains(global.playerRelics, goldenScarabItem)){
		var roll = irandom_range(0, 100);
		if(roll <= 50){
			var enemySide = 0;
			var newUnit = instance_create_layer(x, y, "instances", scarab);
			newUnit.owner = owner;
			newUnit.direction = enemySide;
			newUnit.enemy = global.enemyFaction;
			newUnit.enemyBuildings = global.enemyBuildings;
		}
	}
} else {
	if(relicArrayContains(global.enemyRelics, bounty)){
		drop = drop + 1;
	}
	global.enemyGoldTotal += drop;
	
	//golden scarab spawn
	if(relicArrayContains(global.enemyRelics, goldenScarabItem)){
		var roll = irandom_range(0, 100);
		if(roll <= 50){
			var enemySide = 180;
			var newUnit = instance_create_layer(x, y, "instances", scarab);
			newUnit.owner = owner;
			newUnit.direction = enemySide;
			newUnit.enemy = global.playerFaction;
			newUnit.enemyBuildings = global.playerBuildings;
		}
	}
}