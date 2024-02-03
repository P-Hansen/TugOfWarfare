/// @description Insert description here

//draw_sprite_stretched(sprBackboard, 0, x, y, 300, 600);
draw_self();

draw_set_halign(fa_center);

draw_text(x + (sprite_width/2), y + 20, itemName);
if(item == cagedUnit){
	draw_sprite_ext(sprOrcBarbarian2, 4, x+150, y+150+64, 6, 6, 0, c_white, 1);
}
draw_sprite_ext(itemSprite, 4, x+150, y+150, 4, 4, 0, c_white, 1);
draw_text_ext(x+(sprite_width/2), y+270, itemDescription, 15, sprite_width-20);

draw_set_halign(fa_left);