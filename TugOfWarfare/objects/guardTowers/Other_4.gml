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

var newBuilding1 = instance_create_layer(_x, _y, "Instances", building);
newBuilding1.owner = owner;
newBuilding1.enemy = enemy;
newBuilding1.enemyBuildings = enemyBuildings;

var _y = (room_height/4)/global.GRIDSIZE * global.GRIDSIZE;
var newBuilding2 = instance_create_layer(_x, _y, "Instances", building);
newBuilding2.owner = owner;
newBuilding2.enemy = enemy;
newBuilding2.enemyBuildings = enemyBuildings;

var _y = ((room_height/4)*3)/global.GRIDSIZE * global.GRIDSIZE;
var newBuilding3 = instance_create_layer(_x, _y, "Instances", building);
newBuilding3.owner = owner;
newBuilding3.enemy = enemy;
newBuilding3.enemyBuildings = enemyBuildings;

if(owner == "player"){
	if(relicArrayContains(global.playerRelics, stoneConstruction)){
		newBuilding1.image_blend = c_ltgray;
		newBuilding1.maxHp = newBuilding1.maxHp*2;
		newBuilding1.hp = newBuilding1.maxHp;
	
		newBuilding2.image_blend = c_ltgray;
		newBuilding2.maxHp = newBuilding2.maxHp*2;
		newBuilding2.hp = newBuilding2.maxHp;
	
		newBuilding3.image_blend = c_ltgray;
		newBuilding3.maxHp = newBuilding3.maxHp*2;
		newBuilding3.hp = newBuilding3.maxHp;
	}
} else {
	if(relicArrayContains(global.enemyRelics, stoneConstruction)){
		newBuilding1.image_blend = c_ltgray;
		newBuilding1.maxHp = newBuilding1.maxHp*2;
		newBuilding1.hp = newBuilding1.maxHp;
	
		newBuilding2.image_blend = c_ltgray;
		newBuilding2.maxHp = newBuilding2.maxHp*2;
		newBuilding2.hp = newBuilding2.maxHp;
	
		newBuilding3.image_blend = c_ltgray;
		newBuilding3.maxHp = newBuilding3.maxHp*2;
		newBuilding3.hp = newBuilding3.maxHp;
	}
}