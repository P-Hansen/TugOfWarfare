/// @description Insert description here

// Inherit the parent event
event_inherited();

enemySide = 180;
direction = enemySide;
image_xscale = -image_xscale;

maxHp = 100;
hp = maxHp;

range = 60;
weapon = poisonArrow;
damage = 15;
cooldown = 1.5;

alarm[1] = room_speed*cooldown;