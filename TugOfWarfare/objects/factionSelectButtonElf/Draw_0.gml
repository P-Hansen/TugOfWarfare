/// @description Insert description here

if(selected == true){

draw_sprite_ext(sprElfArcher, animationSpeed, room_width/2-200, room_height/2-80, -10, 10, 0, c_white, 1);
draw_sprite_ext(sprElfMage, animationSpeed, room_width/2+95, room_height/2-80, 10, 10, 0, c_white, 1);

draw_sprite_ext(sprElfHealer, animationSpeed, room_width/2-40, room_height/2-65, 10, 10, 0, c_white, 1);

draw_sprite_ext(sprElfBlademaster, animationSpeed, room_width/2-125, room_height/2+35, 10, 10, 0, c_white, 1);
draw_sprite_ext(sprElfLord, animationSpeed, room_width/2+10, room_height/2+75, 10, 10, 0, c_white, 1);
}

draw_self();
