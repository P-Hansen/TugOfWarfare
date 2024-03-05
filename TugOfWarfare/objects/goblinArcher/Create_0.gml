/// @description Insert description here

// Inherit the parent event
event_inherited();

maxHp = 150;
hp = maxHp;

range = 60;
weapon = poisonArrow;
damage = 15;
cooldown = 1.5;
damageType = "Poison";
unitName = "Archer"
sfx = [bowShot];

alarm[1] = room_speed*cooldown;