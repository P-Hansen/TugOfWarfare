/// @description Insert description here

space = 64;
startingX = window_get_width()/2-(space*5)/2;
startingY = window_get_height()-50;

//building buttons
var buildButtons = function(element, index){
	instance_create_layer(startingX+(index*space), startingY, "weaponLayer", element);
}
array_foreach(global.availableBuildings, buildButtons);

global.timer = 10;
global.goldTotal = 200;
winFlag = false;

unit = noone;
unitHp = 0;
unitMaxHp = 0;
unitRange = 0;
unitDamage = 0;
unitCooldown = 0;
unitDamageType = "";
unitName = "";

alarm[1] = room_speed*1;
alarm[2] = room_speed*1;