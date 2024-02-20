/// @description 

if(clicked == true){
	//snap to grid
	_x = round(mouse_x/global.GRIDSIZE)*global.GRIDSIZE;
	_y = round(mouse_y/global.GRIDSIZE)*global.GRIDSIZE;
	
	//check if space is free show red/green
	if(instance_place(_x, _y, buildingClass) or _y > room_height-100 or _x > room_width/2){
		draw_sprite_ext(buildingSprite, 0, _x, _y, 1, 1, 0, c_red, 0.5);
	} else {
		draw_sprite_ext(buildingSprite, 0, _x, _y, 1, 1, 0, c_green, 0.5);
	}
}


draw_self();
draw_text_color(x-24, y-27, string(spawnNumber) + "x", c_white, c_white, c_white, c_white, 1);
draw_sprite_stretched_ext(unitSprite, 0, x-8, y-8, 32, 32, c_white, 1);
draw_text(x-25, y+30, "$100");