// Script assets for dealing with relics

function relicArrayContains(array, relic){
	for(var i = 0; i < array_length(array); i++){
		if(array[i].object_index == relic){
			return true;
		}
	}
	return false;
}

//returns true if any item in the array has the tag
function arrayContainsTag(array, tag){
	for(var i = 0; i < array_length(array); i++){
		if (asset_has_tags(array[i].object_index, tag, asset_object)){
			return true;
		}
	}
	return false;
}

//returns an array of all items in an array with the tag
function arrayReturnTagItems(array, tag){
	var taggedArray = [];
	for(var i = 0; i < array_length(array); i++){
		if (asset_has_tags(array[i].object_index, tag, asset_object)){
			array_push(taggedArray, array[i]);
		}
	}
}