/// @description Insert description here

for(var i = 1; i < 8; i += 3){
	instance_create_depth(((room_width/10)*i), 100, -2000, relicButton);
}

instance_destroy(self);