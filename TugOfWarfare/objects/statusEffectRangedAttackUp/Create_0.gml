/// @description Insert description here

statusTimer = 0;

function onHit(unit){
	if(asset_has_tags(unit.object_index, "ranged", asset_object)){
		unit.damage = round(unit.damage*1.15);
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