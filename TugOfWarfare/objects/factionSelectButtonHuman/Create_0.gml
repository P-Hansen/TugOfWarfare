/// @description Insert description here

buttons = global.humanBuildings;
class = [humanClass];
classBuildings = [humanBuildingClass];

//human start a defualt selected race
image_index = 1;
global.availableBuildings = buttons;
global.playerFaction = class;
global.playerBuildings = classBuildings;
global.enemyFaction = class;
selected = true;

animationSpeed = 0;
alarm[1] = room_speed/5;