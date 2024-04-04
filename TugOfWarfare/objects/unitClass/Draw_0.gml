/// @description Insert description here

depth = -y;

//weapon hits
if(flashTimer > 0){
	gpu_set_fog(true, c_white, 0, 0);
	flashTimer--;
}

//other colour effects
colourTimer--;
if(colourTimer == 0){
	unitColour = c_white
}

//if unit is selected draw outline
if(selectedFlag == true){
	shader_set(OutlineShader);

	// grab stuff, pointers
	var texture = sprite_get_texture(sprite_index, image_index);
	var texture_Width  = texture_get_texel_width(texture);
	var texture_Height = texture_get_texel_height(texture);

	// put stuff in -> vec2 2 values
	shader_set_uniform_f(uniForm_Handle, texture_Width, texture_Height );
	if(wet == true){
		draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, unitColour, image_alpha);
		//draw_sprite_part_ext(sprite_index, image_index, 0, 0, sprite_width, sprite_height, x, y, image_xscale, image_yscale, unitColour, image_alpha);
	} else {
		draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, unitColour, image_alpha);
	}
	shader_reset();
} else {
	if(wet == true){
		draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, unitColour, image_alpha);
		//draw_sprite_part_ext(sprite_index, image_index, 0, 0, sprite_width, sprite_height, x, y, image_xscale, image_yscale, unitColour, image_alpha);
	} else {
		draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, unitColour, image_alpha);
	}
}

draw_healthbar(x-10, y+3, x+10, y+4, (hp/maxHp)*100, c_black, c_red, c_lime, 0, 1, true)
//draw_self();

gpu_set_fog(false, c_white, 0, 0);