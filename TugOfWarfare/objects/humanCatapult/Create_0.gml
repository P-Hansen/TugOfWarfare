/// @description Insert description here

// Inherit the parent event
event_inherited();

scale = 2;
image_xscale = scale;
image_yscale = scale;

maxHp = 300;
hp = maxHp;

range = 200;
weapon = bolder;
damage = 90;
cooldown = 3;
damageType = "Normal";
unitName = "Catapult";
sfx = [swing1, swing2];
drop = 6;

image_speed = 0;
cooldownAttack = room_speed*cooldown + random_range(-5,5);

//alarm[1] = room_speed*cooldown;