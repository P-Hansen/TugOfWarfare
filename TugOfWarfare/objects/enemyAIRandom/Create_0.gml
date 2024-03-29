/// @description Insert description here

global.enemyGoldTotal = 300;

//clear out old relics
for(var j = array_length(global.enemyRelics)-1; j >= 0; j--){
	var oldRelic = global.enemyRelics[j];
	instance_destroy(oldRelic);
	array_delete(global.enemyRelics, j, 1);
}

//picking random relics

for(var i = 0; i < array_length(global.playerRelics) + global.difficulty; i++){
	array_shuffle_ext(global.availbleRelics);
	item = global.availbleRelics[0];
	array_delete(global.availbleRelics, 0, 1);
	var relic = instance_create_layer(room_width-24-(48*array_length(global.enemyRelics)), 25, "weaponLayer", item);
	array_push(global.enemyRelics, relic);
	//show_debug_message(string(relic))
}

alarm[1] = 1;
index = 1;
_y = 0;
_x = 0;

/*
array_shuffle_ext(global.prefix);
array_shuffle_ext(global.orcNames);
array_shuffle_ext(global.suffix);
namePrefix = global.prefix[0];
orcName = global.orcNames[0];
nameSuffix = global.suffix[0];
name = string_concat(namePrefix, orcName, nameSuffix);
*/

