/// @description Insert description here

if(selected == true){

draw_sprite_ext(sprBrittleArcher, animationSpeed, room_width/2-200, room_height/2-80, -10, 10, 0, c_white, 1);
draw_sprite_ext(sprBoneGolem, animationSpeed/2, room_width/2+50, room_height/2-100, 15, 15, 0, c_white, 1);
draw_sprite_ext(sprBrittleArcher, animationSpeed, room_width/2+90, room_height/2-80, 10, 10, 0, c_white, 1);

draw_sprite_ext(sprSkeletalMage, animationSpeed, room_width/2-50, room_height/2-70, 10, 10, 0, c_white, 1);

draw_sprite_ext(sprOssifiedSlayer, animationSpeed, room_width/2-210, room_height/2+35, -10, 10, 0, c_white, 1);
draw_sprite_ext(sprBonySoldier, animationSpeed, room_width/2+100, room_height/2+35, 10, 10, 0, c_white, 1);
draw_sprite_ext(sprBonySoldier, animationSpeed, room_width/2-100, room_height/2+60, 10, 10, 0, c_white, 1);
draw_sprite_ext(sprDeathKnight, animationSpeed, room_width/2+10, room_height/2+100, 10, 10, 0, c_white, 1);
}

draw_self();
