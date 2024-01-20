/// @description Insert description here

// Inherit the parent event
event_inherited();

enemySide = 180;
direction = enemySide;

maxHp = 300;
hp = maxHp;
enemy = orcClass;
range = 40;
weapon = arrow;
damage = 0;
healing = 50;
cooldown = 2;
system = noone;

yOffset = sprite_get_height(sprite_index);
yOffset = yOffset*image_yscale;
yOffset = yOffset/2;
//sightRange = instance_create_depth(x,y-yOffset, depth+1, range1);

alarm[1] = room_speed*cooldown+random_range(-5,5);