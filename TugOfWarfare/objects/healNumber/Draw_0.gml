/// @description displaying numbers

draw_set_halign(fa_center);
draw_set_halign(fa_middle);

if(amount > 0){
	if(roll == 0){
		draw_text_transformed_color(x, y, string(amount), scale, scale, 0, textColour, textColour, c_yellow, c_yellow, alpha);
	} else {
		draw_text_transformed_color(x, y, string(amount), scale, scale, 0, c_yellow, c_yellow, textColour, textColour, alpha);
	}
} else {
	//for negative values
	//draw_text_transformed_color(x, y, string(amount)+" Gold", 0.5, 0.5, 0, c_red, c_red, c_red, c_red, 1);
}
y -= 0.5;
scale = clamp(scale - 0.01, 0.6, 1.5);
alpha -= 0.007;

draw_set_halign(fa_top);
draw_set_halign(fa_left);