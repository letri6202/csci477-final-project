// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_score(){
	global.game_state = game_states.Choosing;
	
	if(obj_controller.points_scored = 2){
		global.level += 1;
		room_goto_next();
	}
}