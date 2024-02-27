/// @description Insert description here

maxVol = x + sprite_width;
currentVol = audio_get_master_gain(0);

slider = instance_create_depth(x + (currentVol*(maxVol-x)), y, depth-1, volumeSliderButton);

