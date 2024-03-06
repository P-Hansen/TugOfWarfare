/// @description attack

if(currentStatus == status.active){
	if(speed = 0 and image_index >= image_number-1){
		var yOffset = sprite_get_height(sprite_index);
		yOffset = (yOffset * image_yscale)/2;
		var xOffset = sprite_get_height(sprite_index);
		xOffset = (xOffset * image_xscale)/2;
		xOffset = lengthdir_x(xOffset, direction);
		var attack = instance_create_layer(x+xOffset, y-yOffset, "weaponLayer", weapon);
		attack.enemy = array_concat(enemy, enemyBuildings);
		attack.damage = damage;
		attack.direction = direction;
		attack.image_angle = direction;
		var pitch = random_range(pitchLow, pitchHigh);
		array_shuffle_ext(sfx);
		audio_play_sound(sfx[0], 1, false, 1, 0, pitch);
		image_speed = 0;
	}
}

alarm[1] = room_speed*cooldown+random_range(-5,5);