/// @description Insert description here

other.hp -= damage;
other.flashTimer = 5;
//audio_play_sound(sfxHit, 0, 0);
var slow = instance_create_layer(x, y, layer, statusEffectSlow);
slow.onHit(other);



instance_destroy(self);


