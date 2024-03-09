/// @description Insert description here

event_inherited();

image_index = irandom_range(0, image_number-1);

flammability = 100;
//sprite_index = choose(sprGrass1, sprGrass2, sprGrass3);
//image_index = irandom_range(0, image_number-1);
scale = random_range(1, 2.5);
image_xscale = scale;
image_yscale = scale;
damage = 10;
depth = -y;

alarm[1] = room_speed * 1;