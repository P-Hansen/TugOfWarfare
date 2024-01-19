/// @description Insert description here

for(var i = 0; i < array_length(statusEffects); i++){
	statusEffects[i].onEnd(self, i);
}

if(enemy == global.playerFaction){
	var num = instance_create_depth(x, y, depth, goldNumber);
	num.amount = drop;
	global.goldTotal += drop;
}