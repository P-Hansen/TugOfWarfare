/// @description Insert description here

// Inherit the parent event
event_inherited();

scale = 3;
image_xscale = scale;
image_yscale = scale;

maxHp = 650;
hp = maxHp;

weapon = swordSlash;
range = 10;
damage = 20;
cooldown = 1.5;
damageType = "Normal";
unitName = "Bone Golem"
drop = 3;

alarm[1] = room_speed*cooldown;