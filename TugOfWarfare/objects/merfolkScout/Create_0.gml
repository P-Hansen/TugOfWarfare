/// @description Insert description here

// Inherit the parent event
event_inherited();

maxHp = 200;
hp = maxHp;

range = 70;
weapon = spear;
damage = 45;
cooldown = 1.6;
damageType = "Normal";
unitName = "Scout"
sfx = [swing1, swing2];

alarm[1] = room_speed*cooldown;