/// @description Insert description here

x += irandom_range(-5,5);
y += irandom_range(-5,5);

amount = 0;
textColour = c_yellow;
audio_play_sound(gold, 1, false);

alarm[1] = game_get_speed(gamespeed_fps)*1.4;

//audio_sound_pitch(sfxScrapFind, random_range(0.8, 1));
//audio_play_sound(sfxScrapFind, 10, false);