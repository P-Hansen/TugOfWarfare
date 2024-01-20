/// @description Insert description here

// Inherit the parent event
event_inherited();

image_xscale = 0.5;
image_yscale = 0.5;

enemySide = 0;
direction = enemySide;

maxHp = 200;
hp = maxHp;
enemy = global.enemyFaction;
enemyBuildings = global.enemyBuildings;
range = 60;
weapon = arrow;
damage = 25;
cooldown = 1;

alarm[1] = room_speed*cooldown;