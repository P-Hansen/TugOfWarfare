/// @description display and room transition

//gold
draw_set_color(c_white);
draw_text(50, 15, string(global.goldTotal) + " Gold");
//draw_text(200, 10, "Instance count "+string(instance_count));
//spawn timer
draw_set_halign(fa_center);


//spawn timer or victory
if(winFlag == false and lossFlag == false){
	//top timer
	draw_text_transformed(windowWidth/2, 20, string(global.timer), 3, 3, 0);
	//round title card
	if(roundFlag == true){
		//draw_rectangle_colour(room_width/2-250, room_height/3-30, room_width/2+250, room_height/3+70, c_white, c_white, c_white, c_white, false);
		if(global.round <= 4){
			draw_text_transformed(windowWidth/2, windowHeight/3, "Round " + string(global.round), 3, 3, 0);
		} else {
			draw_text_transformed(windowWidth/2, windowHeight/3, "Final Round", 3, 3, 0);
		}
	}
} else if (winFlag == true) {
	//victory text
	draw_text_transformed(windowWidth/2, 20, "Victory", 3, 3, 0);
	//go to next level
	if(instance_number(relicButton) <= 0){
		global.round += 1;
			array_shuffle_ext(global.levels);
			room_goto(global.levels[0]);
	}
} else if (lossFlag == true){
	draw_text_transformed(windowWidth/2, windowHeight/3, "Game Over", 3, 3, 0);
}
//draw_set_color(c_white);
draw_set_halign(fa_left);
//draw_set_font(oldFont)

//bottom UI backboard
//draw_sprite_stretched(sprBackboard, 0, 0, room_height-100, windowWidth, 100);

//selected unit
if(instance_exists(unit)){
	draw_sprite_stretched_ext(unit.sprite_index, 0, windowWidth/2 + 270, windowHeight - 70, 32, 32, c_white, 1);
	draw_set_halign(fa_center);
	//draw_text(room_width/2 + 287, room_height - 95, "Brian the hopefull");
	draw_text(windowWidth/2 + 287, windowHeight - 30, unitName);
	draw_set_halign(fa_left);
	draw_text(windowWidth/2 + 380, windowHeight - 90, "Hp: " + string(unit.hp) + "/" + string(unitMaxHp));
	draw_text(windowWidth/2 + 380, windowHeight - 70, "Range: " + string(unitRange));
	draw_text(windowWidth/2 + 380, windowHeight - 50, "Damage: " + string(unitDamage) + " " + unitDamageType);
	draw_text(windowWidth/2 + 380, windowHeight - 30, "Cooldown: " + string(unitCooldown));
}