/// @description Insert description here

//relics
var buildRelics = function(element, index){
	instance_create_layer((room_width-48)-(index*48), 10, "weaponLayer", element);
}
array_foreach(global.enemyRelics, buildRelics);

//initial buildings
var _x = irandom_range(room_width-100, room_width-48);
_x = round(_x/global.GRIDSIZE)*global.GRIDSIZE;

var _y = irandom_range(48, room_height-100);
_y = round(_y/global.GRIDSIZE)*global.GRIDSIZE;

var roll = irandom_range(0, array_length(global.enemyAvailableBuildings)-1);
instance_create_layer(_x, _y, "Instances", global.enemyAvailableBuildings[roll]);

alarm[1] = 1;
