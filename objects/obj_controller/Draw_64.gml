/// @description Insert description here
// You can write your code in this editor

//Establish a score on screen
draw_set_font(fnt_score);
draw_set_color(c_black);
draw_text(room_width/2,10,string(global.playerPts)+ " - "+ string(global.AIPts));
if(global.game_state = game_states.Waiting){
	draw_text(room_width/2,room_height/2,alarm[0]/60);
}