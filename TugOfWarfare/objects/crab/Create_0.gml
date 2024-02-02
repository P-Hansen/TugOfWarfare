/// @description Insert description here

// Inherit the parent event
event_inherited();

scale = 1;
image_xscale = scale;
image_yscale = scale;

enemySide = 180;
direction = enemySide;

maxHp = 100;
hp = maxHp;

weapon = swordSlash;
damage = 10;
range = 10;
cooldown = 1;


alarm[1] = room_speed*cooldown;