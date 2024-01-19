/// @description displaying numbers

draw_set_halign(fa_center);
draw_set_halign(fa_middle);

if(amount > 0){
	draw_text_transformed_color(x, y, "+"+string(amount), 1, 1, 0, textColour, textColour, textColour, textColour, 1);
} else {
	//for negative values
	//draw_text_transformed_color(x, y, string(amount)+" Gold", 0.5, 0.5, 0, c_red, c_red, c_red, c_red, 1);
}
y -= 0.4;

draw_set_halign(fa_top);
draw_set_halign(fa_left);