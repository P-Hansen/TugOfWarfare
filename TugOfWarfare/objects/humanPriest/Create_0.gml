/// @description Insert description here

// Inherit the parent event
event_inherited();

maxHp = 200;
hp = maxHp;
enemy = humanClass;
range = 60;
weapon = arrow;
damage = 50;
healing = 50;
cooldown = 3;
system = noone;
damageType = "Healing";
unitName = "Priest"

yOffset = sprite_get_height(sprite_index);
yOffset = yOffset*image_yscale;
yOffset = yOffset/2;
//sightRange = instance_create_depth(x,y-yOffset, depth+1, range1);
sfx = heal2;

alarm[1] = room_speed*cooldown+random_range(-5,5);