/// @description starting bushes

if(owner == "player"){
	for(var i = 0; i < 50; i++){
		var _x = irandom_range(400, room_width/2-100);
		var _y = irandom_range(0, room_height-100);
		var bush = instance_create_layer(_x, _y, "weaponLayer", brambles);
		bush.enemy = global.enemyFaction;
	}
} else {
	for(var i = 0; i < 50; i++){
		var _x = irandom_range(room_width - 400, room_width/2 + 100);
		var _y = irandom_range(0, room_height-100);
		var bush = instance_create_layer(_x, _y, "weaponLayer", brambles);
		bush.enemy = global.playerFaction;
	}
}