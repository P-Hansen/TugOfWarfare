/// @description creeping spawn

var _x = irandom_range(creepingX1, creepingX2);
var _y = irandom_range(0, room_height-100);
var bush = instance_create_layer(_x, _y, "Instances", brambles);
if(owner == "player"){
	bush.enemy = global.enemyFaction;
} else {
	bush.enemy = global.playerFaction;
}

creepingX1 = min(creepingX1 + 5, room_width/2);
creepingX2 = min(creepingX2 + 5, room_width-200);

alarm[1] = cooldown;