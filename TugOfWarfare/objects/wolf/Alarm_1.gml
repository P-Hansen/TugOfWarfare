/// @description attack

if(currentStatus == status.active){
	if(speed = 0 and idelFlag == false){
		if(instance_exists(target)){
			var yOffset = target.sprite_height/2;
			var attack = instance_create_layer(target.x, target.y-yOffset, "weaponLayer", weapon);
			attack.enemy = array_concat(enemy, enemyBuildings);
			attack.damage = damage;
			attack.direction = direction;
			attack.image_angle = direction;
		}
	}
}

alarm[1] = room_speed*cooldown+random_range(-5,5);