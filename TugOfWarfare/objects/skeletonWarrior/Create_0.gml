/// @description Insert description here

// Inherit the parent event
event_inherited();
//sprite_index = choose(sprOssifiedSlayer, sprAncientFighter);

maxHp = 250;
hp = maxHp;

weapon = swordSlash;
damage = 30;
range = 10;
cooldown = 1;
damageType = "Normal";
unitName = "Warrior";
sfx = [sfxHit, sfxHit, sfxHit, sfxHit, sfxHit, swordHit1, swordHit2, swordHit3];
drop = 1;

alarm[1] = room_speed*cooldown;