/// @description Insert description here

// Inherit the parent event
event_inherited();

scale = 0.65
image_xscale = -scale;
image_yscale = scale;

maxHp = 1200;
hp = maxHp;

weapon = swordSlash;
range = 10;
damage = 50;
cooldown = 1.5;
damageType = "Normal";
unitName = "Ogre"
pitchLow = 0.7;
pitchHigh = 0.9;
drop = 6;

alarm[1] = room_speed*cooldown;