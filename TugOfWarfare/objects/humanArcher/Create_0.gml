/// @description Insert description here

// Inherit the parent event
event_inherited();

image_xscale = 2;
image_yscale = 2;

maxHp = 150;
hp = maxHp;

range = 100;
weapon = arrow;
damage = 40;
cooldown = 2;
damageType = "Normal";
unitName = "Archer";
sfx = [bowShot];

alarm[1] = room_speed*cooldown;