/// @description Insert description here

// Inherit the parent event
event_inherited();

////
scale = 2;
image_xscale = scale;
image_yscale = scale;

target = noone;
unitColour = c_white;
drop = 1;
enemy = global.playerFaction;
enemyBuildings = global.playerBuildings;
////
numberPerSpawn = 0;
//enemySide = 180;
//direction = enemySide;

maxHp = 1000;
hp = maxHp;

range = 250;
weapon = arrow;
damage = 60;
cooldown = 1.5;

//moveSpeed = 0;
//speed = moveSpeed;
fireFlag = false;

alarm[1] = room_speed*cooldown;