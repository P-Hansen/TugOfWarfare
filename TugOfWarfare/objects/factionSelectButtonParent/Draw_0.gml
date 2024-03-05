/// @description Insert description here

if(selected == true){

var oldFont = draw_get_font();
draw_set_font(fontBig);
//draw_set_halign(fa_center);
//draw_set_valign(fa_middle);

draw_sprite_ext(archer, animationSpeed, room_width/2-200, room_height/2-80, -10, 10, 0, c_black, 1);
draw_text(room_width/2-200, room_height/2-180, "?");

draw_sprite_ext(archer2, animationSpeed, room_width/2+95, room_height/2-80, 10, 10, 0, c_black, 1);
draw_text(room_width/2+85, room_height/2-180, "?");

draw_sprite_ext(mage, animationSpeed, room_width/2-50, room_height/2-70, 10, 10, 0, c_black, 1);
draw_text(room_width/2-80, room_height/2-170, "?");

draw_sprite_ext(frontLine, animationSpeed, room_width/2-125, room_height/2+35, 10, 10, 0, c_black, 1);
draw_text(room_width/2-165, room_height/2-65, "?");
draw_sprite_ext(tank, animationSpeed, room_width/2+10, room_height/2+75, 10, 10, 0, c_black, 1);
draw_text(room_width/2-10, room_height/2-25, "?");


draw_set_font(oldFont);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
}

draw_self();
