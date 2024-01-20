/// @description Insert description here

// Inherit the parent event
event_inherited();

enemySide = 180;
direction = enemySide;

maxHp = 400;
hp = maxHp;
enemy = orcClass;
range = 60;
weapon = arrow;
damage = 0;
healing = 50;
cooldown = 3;
system = noone;

yOffset = sprite_get_height(sprite_index);
yOffset = yOffset*image_yscale;
yOffset = yOffset/2;
//sightRange = instance_create_depth(x,y-yOffset, depth+1, range1);

alarm[1] = room_speed*cooldown+random_range(-5,5);