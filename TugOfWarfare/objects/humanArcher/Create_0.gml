/// @description Insert description here

// Inherit the parent event
event_inherited();

image_xscale = 0.5;
image_yscale = 0.5;

enemySide = 0;
direction = enemySide;

maxHp = 150;
hp = maxHp;

enemyBuildings = global.enemyBuildings;
range = 100;
weapon = arrow;
damage = 40;
cooldown = 2;

alarm[1] = room_speed*cooldown;