/// @description displaying numbers

draw_set_halign(fa_center);
draw_set_halign(fa_middle);

if(amount > 0){
	draw_text_transformed_color(x, y, string(amount), scale, scale, 0, textColour1, textColour1, textColour2, textColour2, 1);
} else {
	//for negative values
	//draw_text_transformed_color(x, y, string(amount)+" Gold", 0.5, 0.5, 0, c_red, c_red, c_red, c_red, 1);
}
y -= 0.6;
x += offsetX;

draw_set_halign(fa_top);
draw_set_halign(fa_left);