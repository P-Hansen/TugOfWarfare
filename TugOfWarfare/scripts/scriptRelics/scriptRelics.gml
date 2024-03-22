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
	return taggedArray;
}

function addStatus(newUnit, owner){
	if(owner == "player"){
		if(arrayContainsTag(global.playerRelics, "statusEffect")){
			var statusEffectsArray = arrayReturnTagItems(global.playerRelics, "statusEffect");
			for(var j = 0; j < array_length(statusEffectsArray); j++){
				var effect = instance_create_depth(x, y, newUnit.depth-1, statusEffectsArray[j].effect);
				effect.onHit(newUnit);
			}
		}
		//curse
		if(relicArrayContains(global.enemyRelics, witheringCurse)){
			var effect = instance_create_depth(x, y, depth, statusEffectWitheringCurse);
			effect.onHit(newUnit);
		}
		
	} else if(owner == "enemy"){
		if (arrayContainsTag(global.enemyRelics, "statusEffect")){
			var statusEffectsArray = arrayReturnTagItems(global.enemyRelics, "statusEffect");
			for(var j = 0; j < array_length(statusEffectsArray); j++){
				var effect = instance_create_depth(x, y, newUnit.depth-1, statusEffectsArray[j].effect);
				effect.onHit(newUnit);
			}
		}
		//curse
		if(relicArrayContains(global.playerRelics, witheringCurse)){
			var effect = instance_create_depth(x, y, depth, statusEffectWitheringCurse);
			effect.onHit(newUnit);
		}
	}
	
	//withering curse
	/*
	if(owner == "player"){
		if(relicArrayContains(global.enemyRelics, witheringCurse)){
			var effect = instance_create_depth(x, y, depth, statusEffectWitheringCurse);
			effect.onHit(newUnit);
		}
	} else if (owner == "enemy"){
		if(relicArrayContains(global.playerRelics, witheringCurse)){
			var effect = instance_create_depth(x, y, depth, statusEffectWitheringCurse);
			effect.onHit(newUnit);
		}
	}
	*/
}