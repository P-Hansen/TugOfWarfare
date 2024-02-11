/// @description Insert description here

event_inherited();

//sprite_index = choose(sprGrass1, sprGrass2, sprGrass3);
image_index = irandom_range(0, image_number-1);
image_angle = irandom_range(0, 360);

image_blend = choose(c_green, c_teal, c_olive);
depth = -y;