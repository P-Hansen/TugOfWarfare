/// @description Insert description here

function onHit(unit){
	if(unit.weapon == arrow){
		if(!asset_has_tags(unit.object_index, "minion", asset_object)){
			unit.weapon = poisonArrow;
			unit.damage = round(unit.damage/2);
		}
	}
	if(unit.weapon == spear){
		if(!asset_has_tags(unit.object_index, "minion", asset_object)){
			unit.weapon = poisonSpear;
			unit.damage = round(unit.damage/2);
		}
	}
	//array_push(unit.statusEffects, self);
}

//ticks every 0.25 seconds
function onTick(unit, i){

}


function onEnd(unit, i){
	//remove self
	array_delete(unit.statusEffects, i, 1);
	instance_destroy(self);
}