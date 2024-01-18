/// @description Insert description here

depth = -y;

if(flashTimer > 0){
	gpu_set_fog(true, c_white, 0, 0);
	flashTimer--;
}

draw_healthbar(x-10, y+3, x+10, y+4, (hp/maxHp)*100, c_black, c_red, c_lime, 0, 1, true)
draw_self();
gpu_set_fog(false, c_white, 0, 0);