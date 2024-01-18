/// @description Insert description here

if(damageDoneFlag == false){
	other.hp -= damage;
	other.flashTimer = 5;
	//instance_destroy(self);
	damageDoneFlag = true;
}


