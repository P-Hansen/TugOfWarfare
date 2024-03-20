/// @description Insert description here

function onHit(unit){
	if(unit.weapon == arrow or unit.weapon == spear){
		if(!asset_has_tags(unit.object_index, "minion", asset_object)){
			unit.weapon = poisonArrow;
			unit.damage = round(damage/2);
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