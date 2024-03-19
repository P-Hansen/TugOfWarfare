/// @description Insert description here

for(var i = 0; i < array_length(statusEffects); i++){
	statusEffects[i].onEnd(self, i);
}

if(enemy == global.playerFaction){
	var num = instance_create_depth(x, y, depth, goldNumber);
	
	if(relicArrayContains(global.playerRelics, bounty)){
		drop = drop + 1;
	}

	num.amount = drop;
	global.goldTotal += drop;
	global.unitsKilled += 1;
} else {
	if(relicArrayContains(global.enemyRelics, bounty)){
		drop = drop + 1;
	}
	global.enemyGoldTotal += drop;
}