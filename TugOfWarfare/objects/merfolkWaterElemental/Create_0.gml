/// @description Insert description here

// Inherit the parent event
event_inherited();
scale = 3;
image_xscale = scale;
image_yscale = scale;

enemySide = 180;
direction = enemySide;

maxHp = 650;
hp = maxHp;


weapon = waterSlash;
damage = 20;
range = 10;
cooldown = 2;

alarm[1] = room_speed*cooldown;