/// @description Insert description here

if(windowOpen == true){
	draw_sprite_stretched(sprBackboard, 0, room_width/2-200, room_height/2-100, 400, 210);
	//draw_text_transformed(room_width/2-75, room_height/2-40, "Volume", 0.5, 0.5, 0);
	//draw_sprite(sprVolume, 0, room_width/2-150, room_height/2-74);
	draw_text(room_width/2-150, room_height/2-74, "Volume");
	//draw_text_transformed(room_width/2-75, room_height/2-5, "Resolution", 0.5, 0.5, 0);
}

draw_self();