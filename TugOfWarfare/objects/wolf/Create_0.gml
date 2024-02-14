/// @description Insert description here

// Inherit the parent event
event_inherited();

scale = 2;
image_xscale = scale;
image_yscale = scale;

enemySide = 180;
direction = enemySide;

maxHp = 270;
hp = maxHp;

weapon = swordSlash;
damage = 10;
range = 10;
cooldown = 1;

idelFlag = true;
sightRange = 200;
damageType = "Normal";
unitName = "Wolf"

alarm[1] = room_speed*cooldown;
alarm[3] = room_speed*1;