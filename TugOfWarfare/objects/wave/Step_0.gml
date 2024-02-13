/// @description Insert description here

if(tideInFlag == true){
	if(y < currentMin + (room_height - currentMin)/5){
		y += 1;
	} else {
		y += 2;
	}
	
	if(y > currentMax){
		currentMax = room_height + irandom_range(100, 500); //time between next wave
		tideInFlag = false;
		currentMin = minY + irandom_range(-100, 200);
	}
} else {
	//if(y < currentMin + (room_height - currentMin)/8){
//		y -= 1;
	if(y < currentMin + (room_height - currentMin)/3){
		y -= 2;
	} else {
		y -= 3;
	}
	
	if(y < currentMin){
		tideInFlag = true;
	}
}