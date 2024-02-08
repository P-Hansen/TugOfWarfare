/// @description Insert description here

if(idelFlag == true){
	var roll = irandom_range(1,100);
	if(roll < 20){
		if(x <= 0 or y < 0 or y > room_height-100 or x > room_width/2){
			direction += 180;
		} else {
			direction = irandom_range(0, 360);
		}
		speed = moveSpeed;
	} else {
		speed = 0;
	}
}

alarm[3] = room_speed*1;