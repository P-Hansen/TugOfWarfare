/// @description Insert description here

//building with gold
if(global.enemyGoldTotal >= 100){

	//picking the building
	if(index == 0){
		_x = irandom_range(room_width-200, room_width-48);
		_x = round(_x/global.GRIDSIZE)*global.GRIDSIZE;

		_y = irandom_range(48, room_height-340);
		_y = round(_y/global.GRIDSIZE)*global.GRIDSIZE;
	}
	_y += 48;
	var newBuilding = instance_create_layer(_x, _y, "Instances", global.enemyAvailableBuildings[index]);
	newBuilding.owner = "enemy";
	index += 1;
	if(index >= 5){
		index = 0;
	}
	
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

	if(relicArrayContains(global.enemyRelics, stoneConstruction)){
		newBuilding.image_blend = c_ltgray;
		newBuilding.maxHp = newBuilding.maxHp*2;
		newBuilding.hp = newBuilding.maxHp;
	}
	
	global.enemyGoldTotal -= 100;
}