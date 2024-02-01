// Script assets have changed for v2.3.0 see

function pickTarget(unitArray, _x, _y){
	var targets = [];
	
	for(var i = 0; i < array_length(unitArray); i++){
		for (var j = 0; j < instance_number(unitArray[i]); j++;){
		    var unit = instance_find(unitArray[i], j);
			array_push(targets, unit);
		}
	}
	
	while(array_length(targets) > 1){
		var loser = highestDistance(targets[0], targets[1]);
		var index = array_get_index(targets, loser);
		array_delete(targets, index, 1);
	}
	
	if(array_length(targets) > 0){
		return targets[0];
	} else {
		return noone;
	}
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