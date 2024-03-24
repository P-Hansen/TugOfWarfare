/// @description Insert description here

statusTimer = 0;
thirtyPrecentHp = 0;

function onHit(unit){
	thirtyPrecentHp = unit.maxHp * 0.3;
	array_push(unit.statusEffects, self);
}

//ticks every 0.25 seconds
function onTick(unit, i){
	if(unit.hp <= thirtyPrecentHp){
		unit.hp += 50;
		system = part_system_create(ParticleSystemHeal);
		part_system_depth(system, unit.depth-1);
		part_system_position(system, unit.x, unit.y);
		var num = instance_create_depth(unit.x, unit.y-16, unit.depth-1, healNumber);
		num.amount = 50;
		var pitch = random_range(0.8, 1);
		audio_play_sound(heal2, 1, false, 1, 0, pitch);
		
		onEnd(unit, i);
	}
}


function onEnd(unit, i){
	//remove self
	array_delete(unit.statusEffects, i, 1);
	instance_destroy(self);
}