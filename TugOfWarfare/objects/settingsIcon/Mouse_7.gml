/// @description Insert description here

windowOpen = true;

if(!instance_exists(closeButton)){
	//close
	closeButton = instance_create_depth(room_width/2+100, room_height/2-50, depth-1, closeSettingsButton);
	closeButton.settings = self;
	//volume
	volumeButton = instance_create_depth(room_width/2-75, room_height/2-18, depth-1, volumeSlider);
	//resolutions
	resbutton1 = instance_create_depth(room_width/2-75, room_height/2, depth-1, resolution512x256);
	resbutton2 = instance_create_depth(room_width/2-25, room_height/2, depth-1, resolution1024x512);
	resbutton3 = instance_create_depth(room_width/2+25, room_height/2, depth-1, resolution1536x768);
	//fullscreen
	fullScreenButton = instance_create_depth(room_width/2-75, room_height/2+18, depth-1, fullscreenButton);
	//restart
	gameRestart = instance_create_depth(room_width/2-75, room_height/2+35, depth-1, restartMenuButton);
}