/// @description Insert description here

draw_text(20, 10, string(global.goldTotal));

var oldFont = draw_get_font();
draw_set_font(fontBig);
draw_set_halign(fa_center);
draw_text(room_width/2, 20, string(global.timer));
draw_set_halign(fa_left);
draw_set_font(oldFont)

draw_sprite_stretched(sprBackboard, 0, 0, window_get_height()-100, window_get_width(), 100);