/// @description create building

if(owner == "player"){
	var _x = 300;
} else {
	var _x = room_width - 300;
}
var _y = (room_height/2)/global.GRIDSIZE * global.GRIDSIZE;

//killing grass
/*
if(place_meeting(_x, _y, grass1)){
	var targets = ds_list_create();
	var count = instance_place_list(_x, _y, [grass1, grassBurnt], targets, false);
	for (var i = 0; i < count; i++) {
		var target = ds_list_find_value(targets, i)
		instance_destroy(target, false);
	}
	ds_list_destroy(targets);
}
*/
var newBuilding = instance_create_layer(_x, _y, "Instances", building);
newBuilding.owner = owner;
newBuilding.enemy = global.enemyFaction;
newBuilding.enemyBuildings = global.enemyBuildings;
newBuilding.ownersUnits = global.playerFaction;
newBuilding.ownersBuildings = global.playerBuildings;
newBuilding.owner = "player";

var _y = (room_height/4)/global.GRIDSIZE * global.GRIDSIZE;
var newBuilding = instance_create_layer(_x, _y, "Instances", building);
newBuilding.owner = owner;
newBuilding.enemy = global.enemyFaction;
newBuilding.enemyBuildings = global.enemyBuildings;
newBuilding.ownersUnits = global.playerFaction;
newBuilding.ownersBuildings = global.playerBuildings;
newBuilding.owner = "player";

var _y = ((room_height/4)*3)/global.GRIDSIZE * global.GRIDSIZE;
var newBuilding = instance_create_layer(_x, _y, "Instances", building);
newBuilding.owner = owner;
newBuilding.enemy = global.enemyFaction;
newBuilding.enemyBuildings = global.enemyBuildings;
newBuilding.ownersUnits = global.playerFaction;
newBuilding.ownersBuildings = global.playerBuildings;
newBuilding.owner = "player";