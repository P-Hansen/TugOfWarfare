/// @description Insert description here

// Inherit the parent event
event_inherited();

scale = 0.65
image_xscale = -scale;
image_yscale = scale;

maxHp = 600;
hp = maxHp;

range = 70;
weapon = fireball;
damage = 40;
cooldown = 2;
damageType = "Fire";
unitName = "Ettin Mage"
sfx = [fireBall];
drop = 6;

alarm[1] = room_speed*cooldown;