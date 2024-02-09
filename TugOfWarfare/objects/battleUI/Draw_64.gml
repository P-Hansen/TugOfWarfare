/// @description display and room transition

//gold
draw_set_color(c_black);
draw_text(20, 10, string(global.goldTotal));
draw_text(200, 10, "Instance count "+string(instance_count));
//spawn timer
var oldFont = draw_get_font();
draw_set_font(fontBig);
draw_set_halign(fa_center);

if(winFlag == false){
	draw_text(room_width/2, 20, string(global.timer));
} else {
	draw_text(room_width/2, 20, "Victory");
	if(instance_number(relicButton) <= 0){
		room_goto(rmBattlefield2);
	}
}

draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_font(oldFont)

//bottom UI backboard
draw_sprite_stretched(sprBackboard, 0, 0, window_get_height()-100, window_get_width(), 100);