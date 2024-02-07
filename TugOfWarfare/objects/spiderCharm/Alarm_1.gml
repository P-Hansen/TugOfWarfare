/// @description spawn

//count number of player buildings
var count = 0;
for(var j = 0; j < array_length(ownersBuildings); j++){
	count += instance_number(ownersBuildings[j]);
}
count = count*2;

//spawning spiders
for(var i = 0; i < count; i++){
	var enemySide = 180;
	var _y = irandom_range(0, room_height-100);
	var newUnit = instance_create_layer(-10, _y, "instances", spider);
	newUnit.direction = enemySide;
	newUnit.enemy = global.enemyFaction;
	newUnit.enemyBuildings = global.enemyBuildings;
}

alarm[1] = cooldown;