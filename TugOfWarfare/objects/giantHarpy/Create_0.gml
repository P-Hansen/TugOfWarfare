/// @description Insert description here

// Inherit the parent event
event_inherited();

maxHp = 300;
hp = maxHp;

weapon = swordSlash;
range = 10;
damage = 35;
cooldown = 1;
damageType = "Normal";
unitName = "Harpy"
sfx = [sfxHit];
drop = 2;

alarm[1] = room_speed*cooldown;