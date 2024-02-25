/// @description Insert description here

x += irandom_range(-5,5);
y += irandom_range(-5,5);

amount = 0;
textColour1 = choose(c_yellow, c_orange, c_red);
textColour2 = choose(c_red, c_orange, c_red);
offsetX = random_range(-0.4, 0.4);
scale = random_range(0.7, 0.9);

alarm[1] = game_get_speed(gamespeed_fps)*1.1;

//audio_sound_pitch(sfxScrapFind, random_range(0.8, 1));
//audio_play_sound(sfxScrapFind, 10, false);