/// @description Insert description here

// Inherit the parent event
event_inherited();
enemySide = 180;
direction = enemySide;


maxHp = 400;
hp = maxHp;
enemy = global.playerFaction;
enemyBuildings = global.playerBuildings
range = 70;
weapon = spear;
damage = 45;
cooldown = 1.6;

alarm[1] = room_speed*cooldown;