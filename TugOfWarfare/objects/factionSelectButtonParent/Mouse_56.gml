/// @description Insert description here

if(position_meeting(mouse_x, mouse_y, self)){
	image_index = 1;
	global.availableBuildings = buttons;
	global.playerFaction = class;
	global.playerBuildings = classBuildings;
	global.enemyFaction = class;
	selected = true;
} else if (position_meeting(mouse_x, mouse_y, factionSelectButtonParent)){
	image_index = 0;
	selected = false;
}

