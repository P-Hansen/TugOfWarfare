/// @description Insert description here

// Inherit the parent event
event_inherited();
enemySide = 180;
direction = enemySide;


maxHp = 350;
hp = maxHp;
enemy = global.playerFaction;
enemyBuildings = global.playerBuildings
range = 70;
weapon = spear;
damage = 45;
cooldown = 1.4;

alarm[1] = room_speed*cooldown;