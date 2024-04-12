/// @description Insert description here

//building with gold
if(global.enemyGoldTotal >= 100){
	_x = irandom_range(room_width-200, room_width-48);
	_x = round(_x/global.GRIDSIZE)*global.GRIDSIZE;

	_y = irandom_range(48, room_height-100);
	_y = round(_y/global.GRIDSIZE)*global.GRIDSIZE;
	
		//killing trees
	if(collision_rectangle(_x-24, _y-24, _x+24, _y+24, [tree1], false, true) != noone){
		var targets = ds_list_create();
		var count = collision_rectangle_list(_x-24, _y-24, _x+24, _y+24, [tree1], false, true, targets, false);
		for (var i = 0; i < count; i++) {
			var target = ds_list_find_value(targets, i);
			//money from killing trees
			global.enemyGoldTotal += 5;
			instance_destroy(target, false);
		}
		ds_list_destroy(targets);
	}
	
	//killing grass
	if(collision_rectangle(_x-24, _y-24, _x+24, _y+24, [grass1], false, true) != noone){
		var targets = ds_list_create();
		var count = collision_rectangle_list(_x-24, _y-24, _x+24, _y+24, [grass1], false, true, targets, false);
		for (var i = 0; i < count; i++) {
			//herbalism money
			if(relicArrayContains(global.enemyRelics, herbalism)){
				global.enemyGoldTotal += 2;
			}
			var target = ds_list_find_value(targets, i);
			instance_destroy(target, false);
		}
		ds_list_destroy(targets);
	}

	//killing grass and trees
	if(collision_rectangle(_x-24, _y-24, _x+24, _y+24, [flammableClass, grassBurnt, treeBurnt], false, true) != noone){
		var targets = ds_list_create();
		var count = collision_rectangle_list(_x-24, _y-24, _x+24, _y+24, [flammableClass, grassBurnt, treeBurnt], false, true, targets, false);
		for (var i = 0; i < count; i++) {
			var target = ds_list_find_value(targets, i);
			instance_destroy(target, false);
		}
		ds_list_destroy(targets);
	}

	//picking the building
	var roll = irandom_range(0, array_length(global.enemyAvailableBuildings)-1);
	var newBuilding = instance_create_layer(_x, _y, "Instances", global.enemyAvailableBuildings[roll]);
	newBuilding.owner = "enemy";

	if(relicArrayContains(global.enemyRelics, stoneConstruction)){
		newBuilding.image_blend = c_ltgray;
		newBuilding.maxHp = newBuilding.maxHp*2;
		newBuilding.hp = newBuilding.maxHp;
	}
	
	global.enemyGoldTotal -= newBuilding.price;
}