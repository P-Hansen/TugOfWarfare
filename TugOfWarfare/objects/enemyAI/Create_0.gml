/// @description Insert description here

//picking random relic
array_shuffle_ext(global.availbleRelics);
item = global.availbleRelics[0];
array_delete(global.availbleRelics, 0, 1);
var relic = instance_create_layer(room_width-24, 25, "weaponLayer", item);
array_push(global.enemyRelics, relic);


//initial buildings
var _x = irandom_range(room_width-100, room_width-48);
_x = round(_x/global.GRIDSIZE)*global.GRIDSIZE;

var _y = irandom_range(48, room_height-100);
_y = round(_y/global.GRIDSIZE)*global.GRIDSIZE;

var roll = irandom_range(0, array_length(global.enemyAvailableBuildings)-1);
instance_create_layer(_x, _y, "Instances", global.enemyAvailableBuildings[roll]);

alarm[1] = 1;
