/// @description pick target

//pick target
target = pickTarget(enemy, x, y);
target2 = pickTarget(enemyBuildings, x, y);
if(distance_to_object(target2) < distance_to_object(target)){
	target = target2;
}

alarm[10] = 30 + irandom_range(-1, 1);