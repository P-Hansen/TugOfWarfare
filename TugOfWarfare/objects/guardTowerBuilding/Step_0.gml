/// @description

if(currentStatus == status.active){
	//pick target
	target = pickTarget(enemy, x, y);
	
	//attack
	if(instance_exists(target)){
		if(distance_to_object(target) <= range ){
			fireFlag = true;
		} else {
			fireFlag = false;
		}
	}

	//preventing stacking
	//var _colliding = instance_place(x, y, [unitClass, tree1]);
	//if _colliding {
	//	var _dir = point_direction(_colliding.x, _colliding.y, x, y);
	//	x += lengthdir_x(1, _dir);
	//	y += lengthdir_y(1, _dir);
	//}
}

//death
if(hp <= 0){
	instance_destroy(self);
}