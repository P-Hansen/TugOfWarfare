/// @description Insert description here

// Inherit the parent event
event_inherited();
enemySide = 180;
direction = enemySide;
image_xscale = -image_xscale;

maxHp = 150;
hp = maxHp;
enemy = global.playerFaction;
enemyBuildings = global.playerBuildings;
weapon = poisonStab;
damage = 20;
range = 10;
cooldown = 1;

alarm[1] = room_speed*cooldown;