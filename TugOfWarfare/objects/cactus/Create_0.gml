/// @description Insert description here

event_inherited();

image_index = irandom_range(0, image_number-1);

flammability = 100;
scale = random_range(1, 2.5);
image_xscale = choose(scale, -scale);
image_yscale = scale;
damage = 15;
depth = -y;

alarm[1] = room_speed * 1;