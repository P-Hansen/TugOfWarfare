/// @description Insert description here

// Inherit the parent event
event_inherited();

maxHp = 450;
hp = maxHp;

weapon = swordSlashSplash;
damage = 20;
range = 10;
cooldown = 1.1;
damageType = "Splash";
unitName = "Warrior"
sfx = [sfxHit, sfxHit, sfxHit, sfxHit, sfxHit, swordHit1, swordHit2, swordHit3];
drop = 3;

alarm[1] = room_speed*cooldown;