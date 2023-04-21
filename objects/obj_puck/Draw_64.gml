/// @description Insert description here
// You can write your code in this editor

if(global.lucky) {
	draw_set_font(fnt_score);
	draw_set_color(c_black);
	draw_text(room_width/2 - 100,604,"Lucky Bounce in: "+ string(alarm[2]/60));	
}

