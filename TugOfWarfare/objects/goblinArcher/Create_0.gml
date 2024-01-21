/// @description Insert description here

// Inherit the parent event
event_inherited();

enemySide = 180;
direction = enemySide;

maxHp = 150;
hp = maxHp;
enemy = global.playerFaction;
enemyBuildings = global.playerBuildings;
range = 100;
weapon = arrow;
damage = 40;
cooldown = 2;

alarm[1] = room_speed*cooldown;