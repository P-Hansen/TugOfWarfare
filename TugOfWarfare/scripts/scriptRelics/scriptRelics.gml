// Script assets for dealing with relics

function relicArrayContains(array, relic){
	for(var i = 0; i < array_length(array); i++){
		if(array[i].object_index == relic){
			return true;
		}
	}
	return false;
}
