/// @description 

if(clicked == true){
	_x = round(mouse_x/global.GRIDSIZE)*global.GRIDSIZE;
	_y = round(mouse_y/global.GRIDSIZE)*global.GRIDSIZE;
	if(instance_place(_x, _y, buildingsClass)){
		draw_sprite_ext(buildingSprite, 0, _x, _y, 1, 1, 0, c_red, 0.5);
	} else {
		draw_sprite_ext(buildingSprite, 0, _x, _y, 1, 1, 0, c_green, 0.5);
	}
}


draw_self();