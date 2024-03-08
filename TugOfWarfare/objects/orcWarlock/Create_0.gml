/// @description Insert description here

// Inherit the parent event
event_inherited();

maxHp = 300;
hp = maxHp;

range = 80;
weapon = fireball;
damage = 40;
cooldown = 2;
damageType = "Fire";
unitName = "Warlock"
sfx = [fireBall];
drop = 3;

alarm[1] = room_speed*cooldown;