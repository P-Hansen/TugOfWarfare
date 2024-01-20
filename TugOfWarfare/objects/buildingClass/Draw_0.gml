/// @description Insert description here

//weapon hits
if(flashTimer > 0){
	gpu_set_fog(true, c_white, 0, 0);
	flashTimer--;
}

//other colour effects
//colourTimer--;
//if(colourTimer == 0){
//	unitColour = c_white
//}

draw_self();
//draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, unitColour, image_alpha);


if(hp < maxHp){
	draw_healthbar(x-23, y+30, x+23, y+30+3, (hp/maxHp)*100, c_black, c_red, c_lime, 0, 1, true)
}

gpu_set_fog(false, c_white, 0, 0);