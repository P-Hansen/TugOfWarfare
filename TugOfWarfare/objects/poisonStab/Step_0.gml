/// @description Insert description here

if(damageDoneFlag == false and place_meeting(x, y, enemy)){
	var target = instance_place(x, y, enemy);
	if(owner == "player" and x > room_width/2){
		damage -= global.passiveArmour;
	} else if(owner == "enemy" and x < room_width/2) {
		damage -= global.passiveArmour;
	}
	target.hp -= damage;
	target.flashTimer = 5;
	
	//if target doesn't have building tag
	if(!asset_has_tags(target.object_index, "building", asset_object)){
		if(instance_exists(target)){
			var burn = instance_create_depth(x, y, target.depth-1, statusEffectPoison);
			burn.onHit(target);
		}
	}
	var num = instance_create_depth(target.x, target.y-16, target.depth-1, damageNumber);
	num.amount = damage;
	var pitch = random_range(0.8, 1);
	audio_play_sound(sfxHit, 1, false, 1, 0, pitch);
	global.damageDone += damage;
	damageDoneFlag = true;
}