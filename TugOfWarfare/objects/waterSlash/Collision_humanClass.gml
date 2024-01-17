/// @description Insert description here

if(!array_contains(targets, other)){
	other.hp -= damage;
	other.flashTimer = 5;
	array_push(targets, other);
}


