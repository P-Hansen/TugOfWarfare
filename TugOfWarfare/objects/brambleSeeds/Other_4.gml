/// @description starting bushes

roomName = room_get_name(room);

if(roomName != "rmWin"){
	if(owner == "player"){
		for(var i = 0; i < 50; i++){
			var _x = irandom_range(400, room_width/2-100);
			var _y = irandom_range(0, room_height-100);
			var bush = instance_create_layer(_x, _y, "weaponLayer", brambles);
			bush.enemy = global.enemyFaction;
		}
		creepingX1 = 400;
		creepingX2 = room_width/2-100
	} else {
		for(var i = 0; i < 50; i++){
			var _x = irandom_range(room_width - 400, room_width/2 + 100);
			var _y = irandom_range(0, room_height-100);
			var bush = instance_create_layer(_x, _y, "weaponLayer", brambles);
			bush.enemy = global.playerFaction;
		}
		creepingX1 = room_width - 400;
		creepingX2 = room_width/2 + 100
	}
}