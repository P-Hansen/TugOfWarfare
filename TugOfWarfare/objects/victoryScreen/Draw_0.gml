/// @description text

draw_set_halign(fa_center);

draw_text_transformed(room_width/2, room_height/2-340, "Victory", 10, 10, 0);
if(i > 90){
	draw_text(room_width/2, room_height/2+80, "Gold spent: " + string(global.goldSpent));
}
if(i > 120){
	draw_text(room_width/2, room_height/2+80, "\n\nUnits build: " + string(global.unitsBuilt));
}
if(i > 150){
	draw_text(room_width/2, room_height/2+80, "\n\n\nBuildings Constructed: " + string(global.buildingsBuild));
}
if(i > 180){
	draw_text(room_width/2, room_height/2+80, "\n\n\n\n\nDamage done: " + string(global.damageDone));
}
if(i > 210){
	draw_text(room_width/2, room_height/2+80, "\n\n\n\n\n\nUnits Killed: " + string(global.unitsKilled));
}
if(i > 240){
	draw_text(room_width/2, room_height/2+80, "\n\n\n\n\n\n\nBuildings Razed: " + string(global.buildingsKilled));
}

draw_set_halign(fa_left);

i++;