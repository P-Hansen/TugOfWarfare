/// @description Insert description here

// Inherit the parent event
event_inherited();

image_xscale = 2;
image_yscale = 2;

maxHp = 300;
hp = maxHp;

range = 200;
weapon = bolder;
damage = 80;
cooldown = 3;
damageType = "Normal";
unitName = "Catapult";
sfx = [swing1, swing2];

image_speed = 0;
cooldownAttack = room_speed*cooldown + random_range(-5,5);

//alarm[1] = room_speed*cooldown;