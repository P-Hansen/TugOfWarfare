/// @description Insert description here

// Inherit the parent event
event_inherited();

scale = 0.65
image_xscale = -scale;
image_yscale = scale;

enemySide = 180;
direction = enemySide;


maxHp = 600;
hp = maxHp;

range = 70;
weapon = song;
damage = 40;
cooldown = 2;

alarm[1] = room_speed*cooldown;