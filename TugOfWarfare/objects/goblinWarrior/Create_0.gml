/// @description Insert description here

// Inherit the parent event
event_inherited();

maxHp = 190;
hp = maxHp;

weapon = swordSlash;
damage = 25;
range = 10;
cooldown = 1;
damageType = "Normal";
unitName = "Warrior"
sfx = [sfxHit, sfxHit, sfxHit, sfxHit, sfxHit, swordHit1, swordHit2, swordHit3];
drop = 1;

alarm[1] = room_speed*cooldown;