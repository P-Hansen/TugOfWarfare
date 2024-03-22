/// @description lightning strike

if(roomName != "rmWin"){

	if(owner == "player"){
		enemy = global.enemyFaction;
	}
	global.lightningTargets = [];
	global.lightningTargets = enemy;

	instance_create_layer(x, y, "weaponLayer", lightning);
	audio_play_sound(thunderStrike1, 1, false);
	cooldown = cooldown*0.99;
	alarm[1] = cooldown + irandom_range(0, 60);
}