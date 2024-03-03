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
//sfx = choose(swordHit1, swordHit2, swordHit3);

alarm[1] = room_speed*cooldown;