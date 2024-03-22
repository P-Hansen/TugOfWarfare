/// @description Insert description here

// Inherit the parent event
event_inherited();

sprite_index = choose(sprGhost, sprGhost2);

scale = 1;
image_xscale = scale;
image_yscale = scale;

enemySide = 180;
direction = enemySide;

maxHp = 999;
hp = maxHp;

weapon = swordSlash;
damage = 999;
range = 10;
cooldown = 1;
damageType = "Normal";
unitName = "Angel"

alarm[1] = room_speed*cooldown;