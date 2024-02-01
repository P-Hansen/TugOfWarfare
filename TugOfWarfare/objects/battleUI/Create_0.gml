/// @description Insert description here

space = 64;
startingX = window_get_width()/2-(space*5)/2;
startingY = window_get_height()-50;

//building buttons
var buildButtons = function(element, index){
	var relic = instance_create_layer(startingX+(index*space), startingY, "weaponLayer", element);
	relic.enemy = global.enemyFaction;
	relic.enemyBuildings = global.enemyBuildings;
	relic.ownersUnits = global.playerFaction;
	relic.ownersBuildings = global.playerBuildings;
	relic.ownerBank = global.enemyGoldTotal;
}
array_foreach(global.availableBuildings, buildButtons);

//relics
var buildRelics = function(element, index){
	instance_create_layer(70+(index*48), 10, "weaponLayer", element);
}
array_foreach(global.playerRelics, buildRelics);

global.timer = 10;
global.goldTotal = 200;

alarm[1] = room_speed*1;
alarm[2] = room_speed*1;