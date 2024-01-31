/// @description Insert description here


if(strikeFlag){
	
	gpu_set_blendmode(bm_add);

	for(var i = 1; i < array_length(arrayPosY)-1; i++){

		draw_sprite_ext(sprLightning, 0, arrayPosX[i], arrayPosY[i], 3, 3, arrayDirection[i], c_yellow, 0.05);
		draw_line_width_color(arrayPosX[i], arrayPosY[i], arrayPosX[i+1], arrayPosY[i+1], 3, c_yellow, c_yellow);

	}
	
	instance_destroy(target);
	gpu_set_blendmode(bm_normal);
	
}