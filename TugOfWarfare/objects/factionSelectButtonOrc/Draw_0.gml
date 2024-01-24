/// @description Insert description here

if(selected == true){

draw_sprite_ext(sprOrcWarlock, animationSpeed, room_width/2-200, room_height/2-80, -10, 10, 0, c_white, 1);
draw_sprite_ext(sprOrcWolfRider, animationSpeed, room_width/2+95, room_height/2-80, 10, 10, 0, c_white, 1);

draw_sprite_ext(sprOrcShamen, animationSpeed, room_width/2-50, room_height/2-70, 10, 10, 0, c_white, 1);

draw_sprite_ext(sprOrcWarrior, animationSpeed, room_width/2-125, room_height/2+35, 10, 10, 0, c_white, 1);
draw_sprite_ext(sprOrcBarbarian, animationSpeed, room_width/2+10, room_height/2+75, 10, 10, 0, c_white, 1);
}

draw_self();
