/// @description Insert description here

var relic = instance_create_depth(200+(48*array_length(global.playerRelics)), 25, depth, item);
relic.enemy = global.enemyFaction;
relic.enemyBuildings = global.enemyBuildings;
relic.ownersUnits = global.playerFaction;
relic.ownersBuildings = global.playerBuildings;
relic.owner = "player";

array_push(global.playerRelics, relic);

with (relicButton){
	if(id != other.id){
		instance_destroy(self);
	}
}

instance_destroy(self, false);
