/// @description Insert description here

scale = 2;
image_xscale = scale;
image_yscale = scale;

maxVol = x + sprite_width;
currentVol = audio_get_master_gain(0);

slider = instance_create_depth(x + (currentVol*(maxVol-x)), y, depth-1, volumeSliderButton);

