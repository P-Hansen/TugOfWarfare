/// @description start fires

if(place_meeting(x, y, flammableClass)){
	var target = instance_place(x, y, flammableClass);
	var flame = instance_create_layer(target.x, target.y, "Instances", obj_flame);
}

