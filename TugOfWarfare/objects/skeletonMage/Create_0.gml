/// @description Insert description here

// Inherit the parent event
event_inherited();

maxHp = 200;
hp = maxHp;

range = 60;
weapon = fireball;
damage = 20;
cooldown = 1;
damageType = "Fire";
unitName = "Mage"
sfx = [fireBall];
drop = 2;

alarm[1] = room_speed*cooldown;