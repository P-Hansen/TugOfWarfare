/// @description Insert description here

if(selected == true){
//back row
draw_sprite_ext(sprMerfolkWaterElemental, animationSpeed/3, room_width/2-50, room_height/2-20, 20, 20, 0, c_white, 1);

draw_sprite_ext(sprMerfolkSiren, animationSpeed, room_width/2-200, room_height/2, 3, 3, 0, c_white, 1);
draw_sprite_ext(sprMerfolkAquamancer, animationSpeed, room_width/2+75, room_height/2, 10, 10, 0, c_white, 1);

draw_sprite_ext(sprMerfolkScout, animationSpeed, room_width/2-125, room_height/2+85, 10, 10, 0, c_white, 1);
draw_sprite_ext(sprMerfolkImpaler, animationSpeed, room_width/2+30, room_height/2+105, 10, 10, 0, c_white, 1);
}

draw_self();
