/// @description Insert description here

if(roomName != "rmWin"){
	//number counts
	count += 1;
	if(count > 10){
		count = 1;
		soundFlag = false;
	}
	sinCount += 0.18; //approx 17sec
	var sinNumber = dsin(sinCount);
	sinNumber = sinNumber*10;
	//show_debug_message(count);
	//show_debug_message(sinNumber);

	//creating snow
	if(sinNumber >= 0){
		if(soundFlag == false){
			//audio_play_sound(blizzard, 1, false);
			soundFlag = true;
		}
		
		if(sinNumber >= count){
			effect_create_above(ef_snow, 10, 10, 1, c_white);
			effect_create_above(ef_rain, 10, 10, 1, c_aqua);
		}
		if(sinNumber >= 9){
			effect_create_above(ef_snow, 10, 10, 1, c_white);
			effect_create_above(ef_rain, 10, 10, 1, c_aqua);
		}
		//dealing damage approx 60dmg
		if(sinNumber > 9){
			//damgeCount += 0.21;
			//show_debug_message(damgeCount);
			with(unitClass){
				//var coldRoll = irandom_range(1,10);
				//if(coldRoll <= 1){
				//	var slow = instance_create_depth(x, y, depth-1, statusEffectSlow);
				//	slow.onHit(self);
				//}
				hp -= 0.21;
			}
			//putting out fire
			with(obj_flame){
				instance_destroy(self);
			}
		}
	}
}