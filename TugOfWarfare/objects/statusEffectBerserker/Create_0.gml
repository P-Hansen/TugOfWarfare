/// @description Insert description here

statusTimer = 0;

function onHit(unit){
	var roll = irandom_range(1, 100);
	if(roll <= 25){
		unit.unitColour = c_red;
		unit.cooldown = unit.cooldown*0.5;
		unit.maxHp = unit.maxHp*0.5;
		unit.hp = unit.maxHp;
		unit.image_speed = unit.image_speed*2;
	} else {
		instance_destroy(self);
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