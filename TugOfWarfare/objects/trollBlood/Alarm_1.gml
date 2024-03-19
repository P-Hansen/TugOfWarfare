/// @description +5 Hp per second

if(owner == "player"){
	with(unitClass){
		if(owner == "player"){
			hp = clamp(hp + 5, 0, maxHp);
		}
	}
} else {
	with(unitClass){
		if(owner != "player"){
			hp = clamp(hp + 5, 0, maxHp);
		}
	}
}

alarm[1] = room_speed*1;