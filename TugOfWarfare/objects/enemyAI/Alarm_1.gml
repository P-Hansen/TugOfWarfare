/// @description initial building

var _x = irandom_range(room_width-100, room_width-48);
_x = round(_x/global.GRIDSIZE)*global.GRIDSIZE;

var _y = irandom_range(48, room_height-100);
_y = round(_y/global.GRIDSIZE)*global.GRIDSIZE;

//killing grass and trees
if(collision_rectangle(_x-24, _y-24, _x+24, _y+24, [flammableClass, grassBurnt, treeBurnt, tree1], false, true) != noone){
	var targets = ds_list_create();
	var count = collision_rectangle_list(_x-24, _y-24, _x+24, _y+24, [flammableClass, grassBurnt, treeBurnt, tree1], false, true, targets, false);
	show_debug_message(_x);
	show_debug_message(targets);
	for (var i = 0; i < count; i++) {
		var target = ds_list_find_value(targets, i);
		instance_destroy(target, false);
	}
	ds_list_destroy(targets);
}

var newBuilding = instance_create_layer(_x, _y, "Instances", global.enemyAvailableBuildings[0]);

if(relicArrayContains(global.enemyRelics, stoneConstruction)){
	newBuilding.image_blend = c_ltgray;
	newBuilding.maxHp = newBuilding.maxHp*2;
	newBuilding.hp = newBuilding.maxHp;
}

if(relicArrayContains(global.enemyRelics, fortress)){
	if(fortress.placed == false){
		newBuilding.numberPerSpawn += 1;
		fortress.placed = true;
		instance_create_layer(_x, _y, "Instances", fortessPad);
	}
}

global.enemyGoldTotal -= 100;