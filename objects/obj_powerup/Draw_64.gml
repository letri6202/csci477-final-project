/// @description Insert description here
// You can write your code in this editor

if(position_meeting(mouse_x,mouse_y,id)){
	
	var xloc=x-150;
	var yloc=y-48 - 48;
	
	
	//Refactored
	var rect_x_left = 158;
	var rect_x_right = 325;
	var text = "";
	var text_x_left = 150;
	var text_y = 96;
	var rect_x_offset = 158;
	
	switch(index){
		case 1:
			//Powerup Power;
			//draw_text(xloc,yloc,"Increases speed of Player Laser");
			text = "Increases speed of Player Laser"
			rect_x_offset = 158;
			break;
		case 2:
			//sprite_index = spr_powerup_speed;
			//draw_text(xloc,yloc,"Increases speed of Player Movement");
			text = "Increases speed of Player Movement";
			rect_x_offset = 178;
			break;
		case 3:
			//sprite_index = spr_powerup_maglsr;
			//draw_text(xloc,yloc,"Laser will attract Puck to it");
			text = "Laser will attract Puck to it";
			rect_x_offset = 130;
			break;
		case 4:
			//sprite_index = spr_powerup_magpck;
			//draw_text(xloc,yloc,"Puck will attract Laser to it");
			text = "Puck will attract Laser to it";
			rect_x_offset = 130;
			break;
		case 5:
			//sprite_index = spr_powerup_bounce;
			//draw_text(xloc,yloc,"+1 Laser Bounces");
			text = "+1 Laser Bounces";
			rect_x_offset = 85;
			break;
		case 6:
			//sprite_index = spr_powerup_green;
			//draw_text(xloc,yloc,"Laser Becomes Green");
			text = "Laser Becomes Green";
			rect_x_offset = 105;
			break;
		case 7:
			//sprite_index = spr_powerup_purple;
			//draw_text(xloc,yloc,"Laser Becomes Purple");
			text = "Laser Becomes Purple";
			rect_x_offset = 110;
			break;
		case 8:
			//sprite_index = spr_powerup_pink;
			//draw_text(xloc,yloc,"Laser Becomes Pink");
			text = "Laser Becomes Pink";
			rect_x_offset = 100;
			break;
		case 9:
			//draw_text(xloc, yloc, "Gain an extra life, enemy loses one point");
			text = "Gain an extra life, enemy loses one point";
			rect_x_offset = 190;
			break;
		case 10:
			//draw_text(xloc, yloc, "Arena caves in, puck draws to center");
			text = "Arena caves in, puck draws to center";
			rect_x_offset = 172;
			break;
		case 11:
			//draw_text(xloc, yloc, "Barrier blocks off net. 1 hit");
			text = "Barrier blocks off net. 1 hit";
			rect_x_offset = 126;
			break;
		case 12:
			//draw_text(xloc, yloc, "Increase laser size");
			text = "Increase laser size";
			rect_x_offset = 90;
			break;
		case 13:
			//draw_text(xloc, yloc, "Portals appear in the rink");
			text = "Portals appear in the rink";
			rect_x_offset = 125;
			break;
		case 14:
			//draw_text(xloc, yloc, "Area in front of net repels puck");
			text = "Area in front of net repels puck";
			rect_x_offset = 150;
			break;
		case 15:
			//draw_text(xloc,yloc, "Laser temporarily stuns AI");
			text = "Laser temporarily stuns AI"
			rect_x_offset = 125;
			break;
		case 16:
			//draw_text(xloc, yloc, "Laser passes through puck. +magnetic/repulsion");
			text = "Laser passes through puck. +magnetic/repulsion";
			rect_x_offset = 225;
			break;
		case 17:
			//draw_text(xloc, yloc, "Repels puck in zone in front of laser");
			text = "Repels puck in zone in front of laser";
			rect_x_offset = 170;
			break;
		case 18:
			//draw_text(xloc, yloc, "+ Enemy score up to 6, get shield of equal strength");
			text = "Increase AI score up to 6, get shield of equal strength";
			rect_x_offset = 247;
			break;
		case 19:
			//draw_text(xloc, yloc, "Gain a turret that mirrors you. Doesn't get powerups.");
			text = "Gain a turret that mirrors you. Doesn't get powerups.";
			rect_x_offset = 245;
			break;
		case 20:
			//draw_text(xloc, yloc, "Increase turret firerate");
			text = "Increase turret firerate";
			rect_x_offset = 110;
			break;
		case 21:
			//draw_text(x-120, y-48, "Every 7 second, if puck is moving left");
			//draw_text(x-120, y-24, "it bounces off a wall and goes right");
			text = "Every 7s, if puck is moving left, it bounces off an invisible wall & goes right";
			rect_x_offset = 340;
			break;
		case 22:
			//draw_text(x-120, y-48, "Choose from 4 powerups instead of 3");
			text = "Choose from 4 powerups instead of 3";
			rect_x_offset = 180;
			break;
		
	}
	draw_set_color(c_white);
	draw_rectangle(x-rect_x_offset,y-64 - 48,x+rect_x_offset,y - 48,false);
	draw_set_color(c_black);
	draw_set_font(fnt_powerups);
	draw_text(x - rect_x_offset + 8, y - text_y + 6,text);
}
