/// @description Insert description here

// Inherit the parent event
event_inherited();

if(owner == "player"){
	creepingX1 = 400;
	creepingX2 = room_width/2-100
} else {
	creepingX1 = room_width - 400;
	creepingX2 = room_width/2 + 100
}

roomName = room_get_name(room);

cooldown = room_speed*3;
alarm[1] = cooldown;
alarm[2] = cooldown;