/// @description Insert description here

// Inherit the parent event
event_inherited();

image_xscale = 0.85;
image_yscale = 0.85;

maxHp = 2200;
hp = maxHp;

weapon = swordSlashSplashGiant;
range = 10;
damage = 50;
cooldown = 2.7;
damageType = "Splash";
unitName = "Hill Giant"
sfx = [giantSwing];
pitchLow = 1;
pitchHigh = 1.2;
drop = 12;

alarm[1] = room_speed*cooldown;