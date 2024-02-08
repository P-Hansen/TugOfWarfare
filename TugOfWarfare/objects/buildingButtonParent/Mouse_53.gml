/// @description placing building

//will build if space is free and you have the money
if(clicked == true and global.goldTotal	>= price and !place_meeting(_x, _y, buildingClass) and _y < room_height-100){
	
	//killing grass
	if(place_meeting(_x, _y, grass1)){
		var targets = ds_list_create();
		var count = instance_place_list(_x, _y, [grass1, grassBurnt], targets, false);
		for (var i = 0; i < count; i++) {
			var target = ds_list_find_value(targets, i)
			instance_destroy(target, false);
		}
		ds_list_destroy(targets);
	}
	var newBuilding = instance_create_layer(_x, _y, "Instances", building);
	newBuilding.owner = "player";
	global.goldTotal -= price;
	clicked = false;
	
	if(relicArrayContains(global.playerRelics, stoneConstruction)){
		newBuilding.image_blend = c_ltgray;
		newBuilding.maxHp = newBuilding.maxHp*2;
		newBuilding.hp = newBuilding.maxHp;
	}
}


