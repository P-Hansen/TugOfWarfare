/// @description Insert description here

if(selected == true){

draw_sprite_ext(sprHumanArcher, animationSpeed, room_width/2-200, room_height/2-80, -3, 3, 0, c_white, 1);
draw_sprite_ext(sprHumanCrossbowmen, animationSpeed, room_width/2+95, room_height/2-80, 3, 3, 0, c_white, 1);

draw_sprite_ext(sprHumanPriest, animationSpeed, room_width/2-50, room_height/2-70, 10, 10, 0, c_white, 1);

draw_sprite_ext(sprHumanSwordsmen, animationSpeed, room_width/2-125, room_height/2+35, 10, 10, 0, c_white, 1);
draw_sprite_ext(sprHumanKnight, animationSpeed, room_width/2+10, room_height/2+75, 10, 10, 0, c_white, 1);
}

draw_self();
