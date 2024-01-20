/// @description Insert description here

// Inherit the parent event
event_inherited();

enemySide = 180;
direction = enemySide;

maxHp = 900;
hp = maxHp;
enemy = global.playerFaction;
enemyBuildings = global.playerBuildings
weapon = swordSlash;
range = 10;
damage = 30;
cooldown = 1.5;


alarm[1] = room_speed*cooldown;