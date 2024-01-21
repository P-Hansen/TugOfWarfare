/// @description

if(currentStatus == status.active){
	//pick target
	target = instance_nearest(x, y, enemyBuildings);
	//target2 = instance_nearest(x, y, enemyBuildings);
	//if(distance_to_object(target2) < distance_to_object(target)){
	//	target = target2;
	//}
	
	//point direction
	if(instance_exists(target)){
		direction = point_direction(x, y, target.x, target.y);
	} else {
		direction = enemySide;
	}

	//attack
	if(instance_exists(target)){
		if(distance_to_object(target) <= range ){
			if(instance_exists(target)){
				direction = point_direction(x, y, target.x, target.y);
			}
			speed = 0;
			instance_destroy(self);
		} else {
			speed = moveSpeed;
		}
	}

	//preventing stacking
	var _colliding = instance_place(x, y, unitClass);
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