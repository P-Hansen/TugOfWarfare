/// @description Insert description here

// Inherit the parent event
event_inherited();
scale = 3;
image_xscale = scale;
image_yscale = scale;

maxHp = 650;
hp = maxHp;


weapon = waterSlash;
damage = 10;
range = 10;
cooldown = 2;
damageType = "Splash";
unitName = "Elemental"
sfx = [wave1, wave2];
drop = 3;

alarm[1] = room_speed*cooldown;