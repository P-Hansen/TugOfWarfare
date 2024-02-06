/// @description lightning strike

if(owner == "player"){
	enemy = global.enemyFaction;
}
global.lightningTargets = [];
global.lightningTargets = enemy;

instance_create_layer(x, y, "weaponLayer", lightning);

alarm[1] = cooldown;
