/// @description Insert description here

// Inherit the parent event
event_inherited();

image_xscale = -image_xscale;

enemySide = 180;
direction = enemySide;

maxHp = 300;
hp = maxHp;
enemy = global.playerFaction;
enemyBuildings = global.playerBuildings;
weapon = swordSlash;
range = 10;
damage = 40;
cooldown = 1;


alarm[1] = room_speed*cooldown;