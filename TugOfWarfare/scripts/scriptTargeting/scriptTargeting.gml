// Script assets have changed for v2.3.0 see

function pickTarget(unitArray, _x, _y){
	var targets = [];
	
	var nearest = function(element, index){
		var unit = instance_nearest(_x, _y, element);
		array_push(targets, unit);
	}
	array_foreach(unitArray, nearest);
	
	while(array_length(targets) > 1){
		var loser = highestDistance(targets[0], targets[1]);
		var index = array_get_index(targets, loser);
		array_delete(targets, index, 1);
	}
	
	return targets[0];
}

function highestDistance(target1, target2){
	var dist1 = distance_to_object(target1);
	var dist2 = distance_to_object(target2);
	
	if(dist1 < dist2){
		return target2;
	} else {
		return target1;
	}
}