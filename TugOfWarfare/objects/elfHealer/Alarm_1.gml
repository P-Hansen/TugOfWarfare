/// @description heal

//destroy old partical system
if(instance_exists(system)){
	part_system_destroy(system);
}

if(currentStatus == status.active){
	//healing
	if(speed = 0 and instance_exists(target)){
		system = part_system_create(ParticleSystemHeal);
		part_system_depth(system, target.depth-1);
		part_system_position(system, target.x, target.y);
		target.colourTimer = 15;
		target.unitColour = c_yellow;
		target.hp += healing;
		var num = instance_create_depth(target.x, target.y-16, target.depth-1, healNumber);
		num.amount = healing;
		//var pitch = random_range(pitchLow, pitchHigh);
		//audio_play_sound(sfx, 1, false, 1, 0, pitch);
	}
}

alarm[1] = room_speed*cooldown+random_range(-5,5);