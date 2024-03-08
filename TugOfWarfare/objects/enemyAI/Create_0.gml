/// @description Insert description here

global.enemyGoldTotal = 200;

//clear out old relics
for(var j = array_length(global.enemyRelics)-1; j >= 0; j--){
	var oldRelic = global.enemyRelics[j];
	instance_destroy(oldRelic);
	array_delete(global.enemyRelics, j, 1);
}

//picking random relics
for(var i = 0; i < array_length(global.playerRelics); i++){
	array_shuffle_ext(global.availbleRelics);
	item = global.availbleRelics[0];
	array_delete(global.availbleRelics, 0, 1);
	var relic = instance_create_layer(room_width-24-(48*array_length(global.enemyRelics)), 25, "weaponLayer", item);
	array_push(global.enemyRelics, relic);
	//show_debug_message(string(relic))
}

//initial building
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

global.enemyGoldTotal -= 100;

/*
array_shuffle_ext(global.prefix);
array_shuffle_ext(global.orcNames);
array_shuffle_ext(global.suffix);
namePrefix = global.prefix[0];
orcName = global.orcNames[0];
nameSuffix = global.suffix[0];
name = string_concat(namePrefix, orcName, nameSuffix);
*/
//alarm[1] = 1;
