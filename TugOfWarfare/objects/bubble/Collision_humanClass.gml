/// @description Insert description here

other.hp -= damage;
other.flashTimer = 5;
//audio_play_sound(sfxHit, 0, 0);
var slow = instance_create_depth(x, y, other.depth-1, statusEffectBubble);
slow.onHit(other);



instance_destroy(self);


