/// @description Insert description here
// You can write your code in this editor

if(position_meeting(mouse_x,mouse_y,id)){
	draw_set_color(c_white);
	draw_rectangle(x-128,y-64,x+200,y,false);
	draw_set_color(c_black);
	draw_set_font(fnt_powerups);
	var xloc=x-120;
	var yloc=y-48;
	
	switch(index){
		case 1:
		//sprite_index = spr_powerup_power;
		draw_text(xloc,yloc,"Increases speed of Player Laser");
		break;
		case 2:
		//sprite_index = spr_powerup_speed;
		draw_text(xloc,yloc,"Increases speed of Player Movement");
		break;
		case 3:
		//sprite_index = spr_powerup_maglsr;
		draw_text(xloc,yloc,"Laser will attract Puck to it");
		break;
		case 4:
		//sprite_index = spr_powerup_magpck;
		draw_text(xloc,yloc,"Puck will attract Laser to it");
		break;
		case 5:
		//sprite_index = spr_powerup_bounce;
		draw_text(xloc,yloc,"+1 Laser Bounces");
		break;
		case 6:
		//sprite_index = spr_powerup_green;
		draw_text(xloc,yloc,"Laser Becomes Green");
		break;
		case 7:
		//sprite_index = spr_powerup_purple;
		draw_text(xloc,yloc,"Laser Becomes Purple");
		break;
		case 8:
		//sprite_index = spr_powerup_pink;
		draw_text(xloc,yloc,"Laser Becomes Pink");
		break;
	}
}
