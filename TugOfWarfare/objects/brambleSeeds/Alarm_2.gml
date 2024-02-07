/// @description spawn

var _x = irandom_range(400, room_width/2-100);
var _y = irandom_range(0, room_height-100);
var bush = instance_create_layer(_x, _y, "Instances", brambles);
if(owner == "player"){
	bush.enemy = global.enemyFaction;
} else {
	bush.enemy = global.playerFaction;
}



alarm[1] = cooldown;