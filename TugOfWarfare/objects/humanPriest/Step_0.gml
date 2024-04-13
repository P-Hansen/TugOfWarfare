/// @description

if(currentStatus == status.active){
	//finding a target
	if(!instance_exists(target) or target.hp >= target.maxHp){
		for (var i = 0; i < instance_number(humanClass); ++i;) {
		    var pTarget = instance_find(humanClass, i);
			if(pTarget.hp < pTarget.maxHp and pTarget != id){
				target = pTarget;
				break;
			}
		}
	}

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