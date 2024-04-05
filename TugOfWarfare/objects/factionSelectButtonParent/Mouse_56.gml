/// @description Insert description here

if(position_meeting(mouse_x, mouse_y, self) and unlock){
	image_index = 1;
	global.availableBuildings = buttons;
	global.playerFaction = class;
	global.playerBuildings = classBuildings;
	global.enemyFaction = class;
	selected = true;
} else if (position_meeting(mouse_x, mouse_y, factionSelectButtonParent)){
	var button = instance_position(mouse_x, mouse_y, factionSelectButtonParent);
	if(button.unlock == true){
		//unselected
		if(unlock == false){
			image_index = 2
		} else {
			image_index = 0;
		}
		selected = false;
	}
}