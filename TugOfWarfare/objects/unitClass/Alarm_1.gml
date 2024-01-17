/// @description attack

if(speed = 0){
	var attack = instance_create_layer(x, y, layer, weapon);
	attack.direction = direction;
	attack.image_angle = direction;
}

alarm[1] = room_speed*1;