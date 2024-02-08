/// @description create building

if(owner == "player"){
	enemy = global.enemyFaction;
	enemyBuildings = global.enemyBuildings;

	ownersUnits = global.playerFaction;
	ownersBuildings = global.playerBuildings;
	var _x = 300;
} else {
	var _x = room_width - 300;
}
var _y = (room_height/2)/global.GRIDSIZE * global.GRIDSIZE;

var newBuilding = instance_create_layer(_x, _y, "Instances", building);
newBuilding.owner = owner;
newBuilding.enemy = enemy;
newBuilding.enemyBuildings = enemyBuildings;

var _y = (room_height/4)/global.GRIDSIZE * global.GRIDSIZE;
var newBuilding = instance_create_layer(_x, _y, "Instances", building);
newBuilding.owner = owner;
newBuilding.enemy = enemy;
newBuilding.enemyBuildings = enemyBuildings;

var _y = ((room_height/4)*3)/global.GRIDSIZE * global.GRIDSIZE;
var newBuilding = instance_create_layer(_x, _y, "Instances", building);
newBuilding.owner = owner;
newBuilding.enemy = enemy;
newBuilding.enemyBuildings = enemyBuildings;