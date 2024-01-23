/// @description Insert description here

// Inherit the parent event
event_inherited();

image_xscale = -0.85;
image_yscale = 0.85;

enemySide = 180;
direction = enemySide;

maxHp = 2000;
hp = maxHp;
enemy = global.playerFaction;
enemyBuildings = global.playerBuildings;
weapon = swordSlash;
range = 10;
damage = 90;
cooldown = 1.5;


alarm[1] = room_speed*cooldown;