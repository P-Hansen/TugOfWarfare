/// @description Insert description here

if(place_meeting(x, y, enemy)){
	var target = instance_place(x, y, enemy);
	if(owner == "player" and x > room_width/2){
		damage -= global.passiveArmour;
	} else if(owner == "enemy" and x < room_width/2) {
		damage -= global.passiveArmour;
	}
	target.hp -= damage;
	target.flashTimer = 5;
	var num = instance_create_depth(target.x, target.y-16, target.depth-1, damageNumberRanged);
	num.amount = damage;
	num.direction = direction;
	var pitch = random_range(0.8, 1);
	audio_play_sound(sfxHit, 1, false, 1, 0, pitch);
	global.damageDone += damage;
	instance_destroy(self);
}