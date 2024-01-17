/// @description creating units

instance_create_layer(x, y-15, layer, unit);
instance_create_layer(x, y+15, layer, unit);

alarm[1] = room_speed*3;