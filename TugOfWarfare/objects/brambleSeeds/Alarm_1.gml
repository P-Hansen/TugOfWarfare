/// @description creeping spawn

if(roomName != "rmWin"){
	if(owner == "player"){
		var _x = irandom_range(creepingX1, creepingX2);
		var _y = irandom_range(0, room_height-100);
		var bush = instance_create_layer(_x, _y, "Instances", brambles);
		bush.enemy = global.enemyFaction;

		creepingX1 = min(creepingX1 + 5, room_width/2);
		creepingX2 = min(creepingX2 + 5, room_width-200);
	} else {
		var _x = irandom_range(creepingX1, creepingX2);
		var _y = irandom_range(0, room_height-100);
		var bush = instance_create_layer(_x, _y, "Instances", brambles);
		bush.enemy = global.playerFaction;

		creepingX1 = max(creepingX1 - 5, room_width/2);
		creepingX2 = max(creepingX2 - 5, 200);
	}

	alarm[1] = cooldown;
}