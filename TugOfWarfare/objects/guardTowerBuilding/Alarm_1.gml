/// @description attack

if(currentStatus == status.active){
	if(fireFlag == true){
		var yOffset = sprite_get_height(sprite_index);
		yOffset = (yOffset * image_yscale)/2;
		var attack = instance_create_layer(x, y-yOffset, "weaponLayer", weapon);
		attack.enemy = array_concat(enemy, enemyBuildings);
		attack.damage = damage;
		if(instance_exists(target)){
			direction = point_direction(x, y-yOffset, target.x, target.y);
		}
		attack.direction = direction;
		attack.image_angle = direction;
		attack.speed = 6;
		attack.owner = owner;
	}
}

alarm[1] = room_speed*cooldown+random_range(-5,5);