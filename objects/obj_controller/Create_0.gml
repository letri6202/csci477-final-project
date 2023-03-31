/// @description Insert description here
// You can write your code in this editor

//Set up variables for points


enum game_states {
	Playing,
	Paused,
	Choosing,
	GameOver,
	Waiting,
}
points_scored = 0;

if(room == rm_lvl_1) {
	global.game_state = game_states.Waiting;
	alarm[0] = 180;
	instance_deactivate_all(true);	
}
else {
	instance_deactivate_all(true);
	display_powerups();
}
