/// @description Insert description here

space = 80;
startingX = room_width/2-(space*5)/2;
startingY = room_height-60;
depth -= 1000;

//building buttons
var buildButtons = function(element, index){
	instance_create_depth(startingX+(index*space), startingY, depth-1000, element);
}
array_foreach(global.availableBuildings, buildButtons);

global.timer = 10;
global.goldTotal = 200;
winFlag = false;
lossFlag = false;
roundFlag = true;

unit = noone;
unitMaxHp = 0;
unitRange = 0;
unitDamage = 0;
unitCooldown = 0;
unitDamageType = "";
unitName = "";
button = noone;
global.roundStart = false;
windowHeight = room_height;
windowWidth = room_width;

alarm[1] = room_speed*1;
alarm[2] = room_speed*1;
alarm[3] = room_speed*3;
alarm[4] = 5;
