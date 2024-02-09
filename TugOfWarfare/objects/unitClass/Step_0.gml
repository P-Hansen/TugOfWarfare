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
		} else {
			speed = moveSpeed;
		}
	}

	//preventing stacking
	var _colliding = instance_place(x, y, [unitClass, tree1]);
	if _colliding {
		var _dir = point_direction(_colliding.x, _colliding.y, x, y);
		x += lengthdir_x(1, _dir);
		y += lengthdir_y(1, _dir);
	}
}

//death
if(hp <= 0){
	instance_destroy(self);
}