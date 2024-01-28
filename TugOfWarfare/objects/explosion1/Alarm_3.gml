/// @description AoE fire starting

var objectsInRange = ds_list_create();
var enemyCount = instance_place_list(x, y, flammableClass, objectsInRange, false);
var target = noone;

for (var i = 0; i < enemyCount; i++;) {
	target = ds_list_find_value(objectsInRange, i);
	var flame = instance_create_layer(target.x,target.y,"weaponLayer",obj_flame);
	flame.myTarget = target;
	target.status = "burning";
}

ds_list_destroy(objectsInRange);




