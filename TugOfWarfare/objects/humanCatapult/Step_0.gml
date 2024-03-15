/// @description

if(currentStatus == status.active){
	
	//point direction
	if(instance_exists(target)){
		direction = point_direction(x, y, target.x, target.y);
	} else {
		direction = enemySide;
	}
	//change the direction of the sprite
	if(direction <= 90 or direction >= 270){
		image_xscale = abs(image_xscale);
	} else {
		image_xscale = -abs(image_xscale);
	}

	//attack
	if(instance_exists(target)){
		if(distance_to_object(target) <= range ){
			if(instance_exists(target)){
				direction = point_direction(x, y, target.x, target.y);
			}
			speed = 0;
			if(cooldownAttack <= 0){
				sprite_index = sprHumanCatapult;
				image_speed = 1;
			}
		} else {
			speed = moveSpeed;
		}
	}
	
	//throwing the rock
	if(speed = 0 and image_index >= image_number-1 and cooldownAttack <= 0){
		var yOffset = sprite_get_height(sprite_index);
		yOffset = (yOffset * image_yscale)/2 + 30;
		var xOffset = sprite_get_height(sprite_index);
		xOffset = (xOffset * image_xscale)/2;
		xOffset = lengthdir_x(xOffset, direction);
		var attack = instance_create_layer(x+xOffset, y-yOffset, "weaponLayer", weapon);
		attack.image_xscale = 0.75;
		attack.image_yscale = 0.75;
		attack.enemy = array_concat(enemy, enemyBuildings);
		attack.damage = damage;
		if(instance_exists(target)){
			attack.direction = point_direction(attack.x, attack.y, target.x, target.y);
		} else {
			attack.direction = direction-10;
		}
		attack.image_angle = direction;
		var pitch = random_range(pitchLow, pitchHigh);
		array_shuffle_ext(sfx);
		audio_play_sound(sfx[0], 1, false, 1, 0, pitch);
		//image_speed = 1;
		sprite_index = sprHumanCatapultReload;
		image_index = 0;
		cooldownAttack = room_speed*cooldown + random_range(-5,5);
	}

	//preventing stacking
	var _colliding = instance_place(x, y, [unitClass, tree1]);
	if _colliding {
		var _dir = point_direction(_colliding.x, _colliding.y, x, y);
		x += lengthdir_x(1, _dir);
		y += lengthdir_y(1, _dir);
	}
}

cooldownAttack -= 1;

//death
if(hp <= 0){
	instance_destroy(self);
}