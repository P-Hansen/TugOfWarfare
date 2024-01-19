/// @description placing building

//will build if space is free and you have the money
if(clicked == true and global.goldTotal	>= price and !instance_place(_x, _y, buildingsClass)){
	instance_create_layer(_x, _y, "Instances", building);
	global.goldTotal -= price;
	clicked = false;
}

