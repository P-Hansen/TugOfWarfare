/// @description Insert description here

function onHit(unit){
	if(unit.weapon == swordSlash or unit.weapon == tridentStab){
		if(!asset_has_tags(unit.object_index, "minion", asset_object)){
			unit.weapon = swordSlashFlaming;
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