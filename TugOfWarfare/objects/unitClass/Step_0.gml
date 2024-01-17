/// @description

//attack
var target = instance_nearest(x, y, enemy)
if(distance_to_object(target) <= range ){
	if(instance_exists(target)){
		direction = point_direction(x, y, target.x, target.y);
	}
	speed = 0;
} else {
	speed = moveSpeed;
}

//death
if(hp <= 0){
	instance_destroy(self);
}