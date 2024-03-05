/// @description Insert description here

// Inherit the parent event
event_inherited();

maxHp = 350;
hp = maxHp;

range = 70;
weapon = spear;
damage = 45;
cooldown = 1.4;
damageType = "Normal";
unitName = "Wolf Rider";
sfx = [swing1, swing2];

alarm[1] = room_speed*cooldown;