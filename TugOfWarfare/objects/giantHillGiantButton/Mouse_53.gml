/// @description placing building

//will build if space is free and you have the money
if(clicked == true and global.goldTotal	>= price and !place_meeting(_x, _y, buildingClass) and _y < room_height-100 and _x < room_width/2 and !place_meeting(_x, _y, ponds)){

	//killing trees
	if(collision_rectangle(_x-48, _y-48, _x+48, _y+48, [tree1], false, true) != noone){
		var targets = ds_list_create();
		var count = collision_rectangle_list(_x-48, _y-48, _x+48, _y+48, [tree1], false, true, targets, false);
		show_debug_message(_x);
		show_debug_message(targets);
		for (var i = 0; i < count; i++) {
			var target = ds_list_find_value(targets, i);
			//money from killing trees
			var num = instance_create_depth(target.x,target.y, depth-10, goldNumber);
			num.amount = 5;
			global.goldTotal += 5;
			instance_destroy(target, false);
		}
		ds_list_destroy(targets);
	}
	
	//killing grass
	if(collision_rectangle(_x-48, _y-48, _x+48, _y+48, [grass1], false, true) != noone){
		var targets = ds_list_create();
		var count = collision_rectangle_list(_x-48, _y-48, _x+48, _y+48, [grass1], false, true, targets, false);
		show_debug_message(_x);
		show_debug_message(targets);
		for (var i = 0; i < count; i++) {
			var target = ds_list_find_value(targets, i);
			//herbalism money
			if(relicArrayContains(global.playerRelics, herbalism)){
				var num = instance_create_depth(target.x,target.y, depth-10, goldNumber);
				num.amount = 2;
				global.goldTotal += 2;
			}
			instance_destroy(target, false);
		}
		ds_list_destroy(targets);
	}
	
	//killing other plants
	if(collision_rectangle(_x-48, _y-48, _x+48, _y+48, [flammableClass, grassBurnt, treeBurnt], false, true) != noone){
		var targets = ds_list_create();
		var count = collision_rectangle_list(_x-48, _y-48, _x+48, _y+48, [flammableClass, grassBurnt, treeBurnt], false, true, targets, false);
		show_debug_message(_x);
		show_debug_message(targets);
		for (var i = 0; i < count; i++) {
			var target = ds_list_find_value(targets, i);
			instance_destroy(target, false);
		}
		ds_list_destroy(targets);
	}

	var newBuilding = instance_create_layer(_x, _y, "Instances", building);
	newBuilding.owner = "player";
	global.goldTotal -= price;
	global.goldSpent += price;
	global.buildingsBuild += 1;
	clicked = false;
	//build sfx
	var pitch = random_range(0.8, 1);
	audio_play_sound(hammer1, 1, false, 1, 0, pitch);
	
	if(relicArrayContains(global.playerRelics, stoneConstruction)){
		newBuilding.image_blend = c_ltgray;
		newBuilding.maxHp = newBuilding.maxHp*2;
		newBuilding.hp = newBuilding.maxHp;
	}
	
	if(relicArrayContains(global.playerRelics, fortress)){
		if(fortress.placed == false){
			newBuilding.numberPerSpawn += 1;
			fortress.placed = true;
			instance_create_layer(_x, _y, "Instances", fortessPad);
		}
	}
}

if(clicked == true){
	clicked = false;
}