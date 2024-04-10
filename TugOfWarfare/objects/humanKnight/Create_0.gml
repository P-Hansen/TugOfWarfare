/// @description Insert description here

// Inherit the parent event
event_inherited();

maxHp = 470;
hp = maxHp;

weapon = swordSlash;
range = 10;
damage = 30;
cooldown = 1.5;
damageType = "Normal";
unitName = "Knight"
sfx = [sfxHit, sfxHit, sfxHit, sfxHit, sfxHit, swordHit1, swordHit2, swordHit3];
drop = 2;

alarm[1] = room_speed*cooldown;