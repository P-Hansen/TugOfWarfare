/// @description Insert description here

// Inherit the parent event
event_inherited();

scale = 1;
image_xscale = scale;
image_yscale = scale;

enemySide = 180;
direction = enemySide;

maxHp = 250;
hp = maxHp;

weapon = swordSlash;
damage = 10;
range = 10;
cooldown = 1;
damageType = "Normal";
unitName = "Spider"

alarm[1] = room_speed*cooldown;