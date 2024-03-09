/// @description Insert description here

// Inherit the parent event
event_inherited();

maxHp = 140;
hp = maxHp;

range = 60;
weapon = arrow;
damage = 15;
cooldown = 1.5;
damageType = "Normal";
unitName = "Archer"
sfx = [bowShot];
drop = 1;

alarm[1] = room_speed*cooldown;