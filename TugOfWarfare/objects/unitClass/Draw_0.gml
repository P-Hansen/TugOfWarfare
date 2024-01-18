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

draw_healthbar(x-10, y+3, x+10, y+4, (hp/maxHp)*100, c_black, c_red, c_lime, 0, 1, true)
//draw_self();
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, unitColour, image_alpha);

gpu_set_fog(false, c_white, 0, 0);