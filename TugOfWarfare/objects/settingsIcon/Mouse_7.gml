/// @description Insert description here

windowOpen = true;

if(!instance_exists(closeButton)){
	//close
	closeButton = instance_create_depth(room_width/2+200, room_height/2-100, depth-1, closeSettingsButton);
	closeButton.settings = self;
	//volume
	volumeButton = instance_create_depth(room_width/2-150, room_height/2-36, depth-1, volumeSlider);
	//resolutions
	//resbutton1 = instance_create_depth(room_width/2-150, room_height/2, depth-1, resolution683x384);
	//resbutton2 = instance_create_depth(room_width/2+50, room_height/2, depth-1, resolution1366x768);
	//resbutton3 = instance_create_depth(room_width/2-150, room_height/2+36, depth-1, resolution2732x1536);
	//fullscreen
	fullScreenButton = instance_create_depth(room_width/2-150, room_height/2+36, depth-1, fullscreenButton);
	//restart
	gameRestart = instance_create_depth(room_width/2-150, room_height/2+70, depth-1, restartMenuButton);
}