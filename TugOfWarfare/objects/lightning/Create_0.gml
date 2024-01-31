/// @description Insert description here

possibleTargets = [];
function arrayCrammer(element, index){
	for(var i = 0; i < instance_number(element); i++){
		array_push(possibleTargets, instance_find(element, i));
	}
}
array_foreach(global.lightningTargets, arrayCrammer);
array_shuffle_ext(possibleTargets);

if(array_length(possibleTargets) > 0){
	target = possibleTargets[0];
} else {
	target = noone;
}
//target = instance_find(global.lightningTargets, irandom(instance_number(global.lightningTargets) - 1));
strikeFlag = false;

if(instance_exists(target)){
	targetX = target.x;
	targetY = target.y;
	arrayPosX[0] = targetX;
	arrayPosY[0] = targetY;
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
	scorchFlag = false;
	alarm[1] = irandom_range(25, 40);
}

