/// @description Insert description here

image_index = irandom_range(0, image_number-1);

if(place_meeting(x, y, flammableClass)){
	var target = instance_place(x, y, flammableClass);
	var flame = instance_create_layer(target.x, target.y, "Instances", obj_flame);
}