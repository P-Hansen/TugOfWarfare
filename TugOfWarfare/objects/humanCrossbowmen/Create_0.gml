/// @description Insert description here

// Inherit the parent event
event_inherited();

image_xscale = 2;
image_yscale = 2;

maxHp = 200;
hp = maxHp;

range = 60;
weapon = arrow;
damage = 25;
cooldown = 1;
damageType = "Normal";
unitName = "Crossbowmen"
sfx = [bowShot];

alarm[1] = room_speed*cooldown;