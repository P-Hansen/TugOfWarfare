/// @description Insert description here

// Inherit the parent event
event_inherited();

maxHp = 900;
hp = maxHp;

weapon = swordSlashSplash;
damage = 40;
range = 10;
cooldown = 1.1;
damageType = "Splash";
unitName = "Death Knight"
sfx = [sfxHit, sfxHit, sfxHit, sfxHit, sfxHit, swordHit1, swordHit2, swordHit3];
drop = 6;

alarm[1] = room_speed*cooldown;