/// @description spawn

if(global.roundStart == true){
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
		var newUnit = instance_create_layer(startingX, _y, "instances", spider);
		newUnit.direction = enemySide;
		if(owner == "player"){
			newUnit.enemy = global.enemyFaction;
			newUnit.enemyBuildings = global.enemyBuildings;
			newUnit.enemySide = 0;
		} else {
			newUnit.enemy = global.playerFaction;
			newUnit.enemyBuildings = global.playerBuildings;	
		}
	}
}

alarm[1] = cooldown;