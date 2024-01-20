/// @description Insert description here

// Inherit the parent event
event_inherited();
enemySide = 180;
direction = enemySide;

maxHp = 450;
hp = maxHp;
enemy = global.playerFaction;
enemyBuildings = global.playerBuildings
weapon = swordSlashSplash;
damage = 40;
range = 10;
cooldown = 1.1;


alarm[1] = room_speed*cooldown;