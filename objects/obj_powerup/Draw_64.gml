/// @description Insert description here
// You can write your code in this editor

if(position_meeting(mouse_x,mouse_y,id)){
	draw_set_color(c_white);
	draw_rectangle(x-128,y-64,x+128,y,false);
	draw_set_color(c_black);
	draw_set_font(fnt_powerups);
	switch(index){
		case 1:
		//sprite_index = spr_powerup_power;
		draw_text(x-120,y-48,"Increases speed of Player Laser");
		break;
		case 2:
		//sprite_index = spr_powerup_speed;
		draw_text(x-120,y-48,"Increases speed of Player Movement");
		break;
		case 3:
		//sprite_index = spr_powerup_maglsr;
		draw_text(x-120,y-48,"Laser will attract Puck to it");
		break;
		case 4:
		//sprite_index = spr_powerup_magpck;
		draw_text(x-120,y-48,"Puck will attract Laser to it");
		break;
		case 5:
		//sprite_index = spr_powerup_bounce;
		draw_text(x-120,y-48,"+1 Laser Bounces");
		break;
	}
}
