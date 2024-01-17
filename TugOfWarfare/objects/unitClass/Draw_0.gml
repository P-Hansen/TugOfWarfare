/// @description Insert description here

if(flashTimer > 0){
	gpu_set_fog(true, c_white, 0, 0);
	flashTimer--;
}

draw_self();
gpu_set_fog(false, c_white, 0, 0);