/// @description status effect tick


for(var i = 0; i < array_length(statusEffects); i++){
	statusEffects[i].onTick(self, i);
}



alarm[2] = room_speed*0.25;