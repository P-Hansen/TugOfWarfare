/// @description Insert description here

// Inherit the parent event
event_inherited();

maxHp = 500;
hp = maxHp;

range = 80;
weapon = magicMissle3x;
damage = 20;
cooldown = 1.2;
damageType = "3x Normal";
unitName = "Mage"
sfx = fireBall;

alarm[1] = room_speed*cooldown;