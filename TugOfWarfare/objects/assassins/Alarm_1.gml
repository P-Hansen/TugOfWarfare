/// @description spawn

//count number of player buildings
var count = 0;
for(var j = 0; j < array_length(global.enemyBuildings); j++){
	if(asset_has_tags(global.enemyBuildings[j].object_index, "mageBuilding", asset_object)){
		count += instance_number(global.enemyBuildings[j]);
	}
}
show_debug_message("count: " + string(count));

//spawning
for(var i = 0; i < count; i++){
	var enemySide = 180;
	var _y = irandom_range(0, room_height-100);
	var newUnit = instance_create_layer(startingX, _y, "instances", assassin);
	newUnit.direction = enemySide;
	newUnit.owner = owner;
	if(owner == "player"){
		newUnit.enemy = global.enemyFaction;
		newUnit.enemyBuildings = global.enemyBuildings;
		newUnit.enemySide = 0;
	} else {
		newUnit.enemy = global.playerFaction;
		newUnit.enemyBuildings = global.playerBuildings;	
	}
}

alarm[1] = cooldown;