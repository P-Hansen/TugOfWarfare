/// @description start fires

if(place_meeting(x, y, grass1)){
	var target = instance_place(x, y, grass1);
	var flame = instance_create_layer(target.x, target.y, "Instances", obj_flame);
}








