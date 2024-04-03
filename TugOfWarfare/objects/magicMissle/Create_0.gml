/// @description Insert description here
scale = 2;
image_xscale = scale;
image_yscale = scale;

speed = 2 + random_range(-0.1, 0.1);
damage = 30;
enemy = [];
owner = noone;

trackFlag = false;
alarm[1] = room_speed*0.5;
alarm[2] = 2;