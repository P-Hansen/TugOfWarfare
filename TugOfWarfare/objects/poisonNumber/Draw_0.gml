/// @description displaying numbers

draw_set_halign(fa_center);
draw_set_halign(fa_middle);

if(amount > 0){
	draw_text_transformed_color(x, y, string(amount), 0.75, 0.75, 0, textColour, textColour, textColour, textColour, alpha);
} else {
	//for negative values
	//draw_text_transformed_color(x, y, string(amount)+" Gold", 0.5, 0.5, 0, c_red, c_red, c_red, c_red, 1);
}
y -= 0.4;
alpha -= 0.007;
x += sin(count)/4;

count += 0.1;
draw_set_halign(fa_top);
draw_set_halign(fa_left);