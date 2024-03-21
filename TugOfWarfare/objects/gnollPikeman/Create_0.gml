/// @description Insert description here

// Inherit the parent event
event_inherited();

maxHp = 200;
hp = maxHp;

range = 70;
weapon = spear;
damage = 40;
cooldown = 1.6;
damageType = "Normal";
unitName = "Pikemen"
sfx = [swing1, swing2];
drop = 2;

alarm[1] = room_speed*cooldown;