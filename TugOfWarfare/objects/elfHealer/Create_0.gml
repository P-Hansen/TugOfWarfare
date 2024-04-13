/// @description Insert description here

// Inherit the parent event
event_inherited();

maxHp = 400;
hp = maxHp;
range = 70;
weapon = arrow;
damage = 70;
healing = 70;
cooldown = 2;
system = noone;
damageType = "Healing";
unitName = "Healer"

yOffset = sprite_get_height(sprite_index);
yOffset = yOffset*image_yscale;
yOffset = yOffset/2;
//sightRange = instance_create_depth(x,y-yOffset, depth+1, range1);
sfx = heal2;
drop = 6;

alarm[1] = room_speed*cooldown+random_range(-5,5);