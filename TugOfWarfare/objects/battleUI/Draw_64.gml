/// @description display and room transition

//gold
draw_set_color(c_white);
draw_text(20, 15, string(global.goldTotal) + " Gold");
//draw_text(200, 10, "Instance count "+string(instance_count));
//spawn timer
//var oldFont = draw_get_font();
//draw_set_font(fontBig);
draw_set_halign(fa_center);
//draw_set_color(c_black);

//spawn timer or victory
if(winFlag == false and lossFlag == false){
	//top timer
	draw_text_transformed(room_width/2, 20, string(global.timer), 3, 3, 0);
	//round title card
	if(roundFlag == true){
		draw_rectangle_colour(room_width/2-250, room_height/3-30, room_width/2+250, room_height/3+70, c_white, c_white, c_white, c_white, false);
		if(global.round <= 4){
			draw_text_transformed(room_width/2, room_height/3, "Round " + string(global.round), 3, 3, 0);
		} else {
			draw_text_transformed(room_width/2, room_height/3, "Final Round", 3, 3, 0);
		}
	}
} else if (winFlag == true) {
	//victory text
	draw_text_transformed(room_width/2, 20, "Victory", 3, 3, 0);
	//go to next level
	if(instance_number(relicButton) <= 0){
		global.round += 1;
		array_shuffle_ext(global.levels);
		room_goto(global.levels[0]);
	}
} else if (lossFlag == true){
	draw_text_transformed(room_width/2, room_height/3, "Game Over", 3, 3, 0);
}
//draw_set_color(c_white);
draw_set_halign(fa_left);
//draw_set_font(oldFont)

//bottom UI backboard
draw_sprite_stretched(sprBackboard, 0, 0, window_get_height()-100, window_get_width(), 100);

//selected unit
if(instance_exists(unit)){
	draw_sprite_stretched_ext(unit.sprite_index, 0, room_width/2 + 270, room_height - 70, 32, 32, c_white, 1);
	draw_set_halign(fa_center);
	//draw_text(room_width/2 + 287, room_height - 95, "Brian the hopefull");
	draw_text(room_width/2 + 287, room_height - 30, unitName);
	draw_set_halign(fa_left);
	draw_text(room_width/2 + 380, room_height - 90, "Hp: " + string(unit.hp) + "/" + string(unitMaxHp));
	draw_text(room_width/2 + 380, room_height - 70, "Range: " + string(unitRange));
	draw_text(room_width/2 + 380, room_height - 50, "Damage: " + string(unitDamage) + " " + unitDamageType);
	draw_text(room_width/2 + 380, room_height - 30, "Cooldown: " + string(unitCooldown));
}