/// @description Insert description here

if(selected == true){

draw_sprite_ext(sprStoneGiant, animationSpeed/1.2, room_width/2-200, room_height/2-30, -5, 5, 0, c_white, 1);
draw_sprite_ext(sprHillGiant, animationSpeed/1.2, room_width/2+95, room_height/2, 5, 5, 0, c_white, 1);

draw_sprite_ext(sprEttinMage, animationSpeed, room_width/2-75, room_height/2-20, 3, 3, 0, c_white, 1);

draw_sprite_ext(sprHarpy, animationSpeed*1.5, room_width/2-175, room_height/2+50, 10, 10, 0, c_white, 1);
draw_sprite_ext(sprOger, animationSpeed, room_width/2-25, room_height/2+125, 3, 3, 0, c_white, 1);
draw_sprite_ext(sprHarpy, animationSpeed*1.5, room_width/2+110, room_height/2+85, 10, 10, 0, c_white, 1);
}

draw_self();
