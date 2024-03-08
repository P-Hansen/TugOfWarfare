/// @description Insert description here

// Inherit the parent event
event_inherited();

maxHp = 900;
hp = maxHp;

weapon = swordSlash;
range = 10;
damage = 20;
cooldown = 1.5;
damageType = "Normal";
unitName = "Lord"
sfx = [sfxHit, sfxHit, sfxHit, sfxHit, sfxHit, swordHit1, swordHit2, swordHit3];
drop = 3;

alarm[1] = room_speed*cooldown;