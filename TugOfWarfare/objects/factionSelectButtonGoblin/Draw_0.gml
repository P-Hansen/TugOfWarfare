/// @description Insert description here

if(selected == true){

draw_sprite_ext(sprGoblinArcher, animationSpeed, room_width/2-100, room_height/2-175, 10, 10, 0, c_white, 1);
draw_sprite_ext(sprGoblinArcher, animationSpeed, room_width/2+50, room_height/2-150, 10, 10, 0, c_white, 1);

draw_sprite_ext(sprGoblinSapper, animationSpeed, room_width/2-50, room_height/2-20, 10, 10, 0, c_white, 1);
draw_sprite_ext(sprGoblinRogue, animationSpeed, room_width/2+100, room_height/2-20, 10, 10, 0, c_white, 1);

draw_sprite_ext(sprGoblinWarrior, animationSpeed, room_width/2+225, room_height/2+50, 10, 10, 0, c_white, 1);

draw_sprite_ext(sprGoblinGrunt, animationSpeed, room_width/2-75, room_height/2+75, -10, 10, 0, c_white, 1);
draw_sprite_ext(sprGoblinGrunt, animationSpeed, room_width/2+125, room_height/2+100, 10, 10, 0, c_white, 1);
draw_sprite_ext(sprGoblinWarrior, animationSpeed, room_width/2-175, room_height/2+100, -10, 10, 0, c_white, 1);

draw_sprite_ext(sprGoblinBrawler, animationSpeed, room_width/2+10, room_height/2+140, 10, 10, 0, c_white, 1);
}

draw_self();
