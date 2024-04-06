/// @description Insert description here

audio_play_sound(trumpetsWin, 1, false);

i = 0;
alarm[1] = 1;
unlock = noone;

if(global.GoblinUnlocked == false){
	unlock = "Goblins Unlocked!";
	global.GoblinUnlocked = true;
} else if(global.MerfolkUnlocked == false){
	unlock = "Merfolk Unlocked!";
	global.MerfolkUnlocked = true;
} else if(global.GiantUnlocked == false){
	unlock = "Giants Unlocked!";
	global.GiantUnlocked = true;
} else if(global.ElfUnlocked == false){
	unlock = "Elves Unlocked!";
	global.ElfUnlocked = true;
} else if(global.SkeletonUnlocked == false){
	unlock = "Skeletons Unlocked!";
	global.SkeletonUnlocked = true;
}

ssaveSave();