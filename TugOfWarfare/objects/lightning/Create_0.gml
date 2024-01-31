/// @description Insert description here

target = instance_find(global.enemyFaction, irandom(instance_number(global.enemyFaction) - 1));
strikeFlag = false;

if(instance_exists(target)){
	arrayPosX[0] = target.x;
	arrayPosY[0] = target.y;
	arrayDirection[0] = 90;

	for(var i = 1; arrayPosY[i-1] > 0; i++){
		var newDirection = irandom_range(45, 135);
		var length = irandom_range(1, 20);
		var xOffest = lengthdir_x(length, newDirection);
		var yOffset = lengthdir_y(length, newDirection);
	
		arrayPosX[i] = arrayPosX[i-1] + xOffest;
		arrayPosY[i] = arrayPosY[i-1] + yOffset;
		arrayDirection[i] = newDirection;
	}

	strikeFlag = true;
	alarm[1] = irandom_range(25, 40);
}

