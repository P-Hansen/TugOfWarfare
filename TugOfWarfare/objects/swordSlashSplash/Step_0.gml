/// @description Insert description here

var enemiesInRange = ds_list_create();
var enemyCount = instance_place_list(x, y, enemy, enemiesInRange, false);
var target = noone;

for (var i = 0; i < enemyCount; i++;) {
	target = ds_list_find_value(enemiesInRange, i);
	if(!array_contains(targets, target)){
		if(owner == "player" and x > room_width/2){
			damage -= global.passiveArmour;
		} else if(owner == "enemy" and x < room_width/2) {
			damage -= global.passiveArmour;
		}
		target.hp -= damage;
		target.flashTimer = 5;
		array_push(targets, target);
		var num = instance_create_depth(target.x, target.y-16, target.depth-1, damageNumber);
		num.amount = damage;
		global.damageDone += damage;
		//audio_play_sound(sfxHit, 0, 0);
	}
}

ds_list_destroy(enemiesInRange);