/// @description Insert description here

depth = -y;

if(flashTimer > 0){
	gpu_set_fog(true, c_white, 0, 0);
	flashTimer--;
}

draw_self();
gpu_set_fog(false, c_white, 0, 0);