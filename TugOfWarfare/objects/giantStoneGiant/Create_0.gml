/// @description Insert description here

// Inherit the parent event
event_inherited();

image_xscale = -0.85;
image_yscale = 0.85;

enemySide = 0;
direction = enemySide;

maxHp = 1500;
hp = maxHp;
enemy = global.playerFaction;
enemyBuildings = global.playerBuildings;
range = 100;
weapon = bolder;
damage = 150;
cooldown = 2;

alarm[1] = room_speed*cooldown;