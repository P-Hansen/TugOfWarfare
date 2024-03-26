/// @description Insert description here

statusTimer = 0;

function onHit(unit){
	//if(asset_has_tags(unit.object_index, "ranged", asset_object)){
	if(unit.range <= 10){
		unit.maxHp = round(unit.maxHp*1.20);
		unit.hp = unit.maxHp;
		unit.cooldown = unit.cooldown*1.05;
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