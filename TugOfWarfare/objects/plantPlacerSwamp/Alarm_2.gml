/// @description mist 2

var _x = irandom_range(0, room_width);
var _y = irandom_range(0, room_height);
var size = irandom_range(100, 500);

effect_create_above(ef_cloud, _x, _y, size, c_gray);

alarm[2] = room_speed * (2 + random_range(-2, 2));