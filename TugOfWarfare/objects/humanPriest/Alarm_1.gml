/// @description heal

//destroy old partical system
if(instance_exists(system)){
	part_system_destroy(system);
}

//healing
if(speed = 0 and instance_exists(target)){
	system = part_system_create(ParticleSystemHeal);
	part_system_depth(system, target.depth-1);
	part_system_position(system, target.x, target.y);
	target.colourTimer = 15;
	target.unitColour = c_yellow;
	target.hp += healing;
}

alarm[1] = room_speed*cooldown+random_range(-5,5);