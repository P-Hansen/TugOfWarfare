/// @description attack

if(speed = 0){
	var yOffset = sprite_get_height(sprite_index);
	yOffset = (yOffset * image_yscale)/2;
	var attack = instance_create_layer(x, y-yOffset, "weaponLayer", weapon);
	attack.damage = damage;
	attack.direction = direction;
	attack.image_angle = direction;
}

alarm[1] = room_speed*cooldown+random_range(-5,5);