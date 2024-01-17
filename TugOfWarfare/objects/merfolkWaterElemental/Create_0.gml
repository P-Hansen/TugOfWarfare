/// @description Insert description here

// Inherit the parent event
event_inherited();
scale = 3;
image_xscale = scale;
image_yscale = scale;

enemySide = 180;
direction = enemySide;

hp = 400;
moveSpeed = 1;
speed += moveSpeed;
enemy = humanClass;
weapon = waterSlash;
damage = 30;
range = 10;
cooldown = 2;

alarm[1] = room_speed*cooldown;