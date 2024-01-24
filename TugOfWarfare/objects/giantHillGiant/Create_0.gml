/// @description Insert description here

// Inherit the parent event
event_inherited();

image_xscale = -0.85;
image_yscale = 0.85;

enemySide = 180;
direction = enemySide;

maxHp = 2200;
hp = maxHp;

weapon = swordSlashSplashGiant;
range = 10;
damage = 90;
cooldown = 2.7;


alarm[1] = room_speed*cooldown;