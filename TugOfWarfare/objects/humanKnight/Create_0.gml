/// @description Insert description here

// Inherit the parent event
event_inherited();
enemySide = 0;
direction = enemySide;

maxHp = 450;
hp = maxHp;
enemy = global.enemyFaction;
enemyBuildings = global.enemyBuildings;
weapon = swordSlash;
range = 10;
damage = 30;
cooldown = 1.5;


alarm[1] = room_speed*cooldown;