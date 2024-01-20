/// @description attack

if(currentStatus == status.active){
	if(speed = 0 and range > 10){
		var yOffset = sprite_get_height(sprite_index);
		yOffset = (yOffset * image_yscale)/2;
		var xOffset = sprite_get_height(sprite_index);
		xOffset = (xOffset * image_xscale)/2;
		xOffset = lengthdir_x(xOffset, direction);
		var attack = instance_create_layer(x+xOffset, y-yOffset, "weaponLayer", weapon);
		attack.enemy = [enemy, enemyBuildings];
		attack.damage = damage;
		attack.direction = direction;
		attack.image_angle = direction;
	} else if(speed = 0 and range <= 10){
		if(instance_exists(target)){
			var dist = distance_to_point(target.x, target.y);
			var xOffset = lengthdir_x(dist, direction);
			var yOffset = lengthdir_y(dist, direction);
			var attack = instance_create_layer(x+xOffset, y+yOffset, "weaponLayer", weapon);
			attack.enemy = [enemy, enemyBuildings];
			attack.damage = damage;
			attack.direction = direction;
			attack.image_angle = direction;
		}
	}
}

alarm[1] = room_speed*cooldown+random_range(-5,5);