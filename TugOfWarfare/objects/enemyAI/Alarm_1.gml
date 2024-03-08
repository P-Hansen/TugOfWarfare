/// @description build
/*
var _x = irandom_range(room_width-100, room_width-48);
_x = round(_x/global.GRIDSIZE)*global.GRIDSIZE;

var _y = irandom_range(48, room_height-100);
_y = round(_y/global.GRIDSIZE)*global.GRIDSIZE;

//killing grass and trees
if(place_meeting(_x, _y, [flammableClass, grassBurnt, treeBurnt, tree1])){
	var targets = ds_list_create();
	var count = instance_place_list(_x, _y, [flammableClass, grassBurnt, treeBurnt, tree1], targets, false);
	for (var i = 0; i < count; i++) {
		var target = ds_list_find_value(targets, i);
		instance_destroy(target, false);
	}
	ds_list_destroy(targets);
}

var roll = irandom_range(0, array_length(global.enemyAvailableBuildings)-1);
var newBuilding = instance_create_layer(_x, _y, "Instances", global.enemyAvailableBuildings[roll]);

if(relicArrayContains(global.enemyRelics, stoneConstruction)){
	newBuilding.image_blend = c_ltgray;
	newBuilding.maxHp = newBuilding.maxHp*2;
	newBuilding.hp = newBuilding.maxHp;
}

alarm[1] = room_speed*32;

*/