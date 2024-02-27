/// @description Insert description here

if(windowOpen == true){
	draw_sprite_stretched(sprBackboard, 0, room_width/2-100, room_height/2-50, 200, 105);
	//draw_text_transformed(room_width/2-75, room_height/2-40, "Volume", 0.5, 0.5, 0);
	draw_sprite(sprVolume, 0, room_width/2-75, room_height/2-37);
	//draw_text_transformed(room_width/2-75, room_height/2-5, "Resolution", 0.5, 0.5, 0);
}

draw_self();