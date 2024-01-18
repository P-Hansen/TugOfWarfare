/// @description Insert description here

// Inherit the parent event
event_inherited();

enemySide = 0;
direction = enemySide;

maxHp = 200;
hp = maxHp;
enemy = humanPriestTargets;
range = 80;
weapon = arrow;
damage = 0;
healing = 50;
cooldown = 5;
system = noone;

alarm[1] = room_speed*cooldown;