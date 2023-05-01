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
	audio_play_sound(music_rm1,0,true);
	}
	else {
		if(room = rm_lvl_2){
		audio_stop_sound(music_rm1);
		audio_play_sound(music_rm2,0,true);
	}
	else if(room = rm_lvl_3){
		audio_stop_sound(music_rm2);
		audio_play_sound(music_rm3,0,true);
	}
	else if(room = rm_lvl_4){
		audio_stop_sound(music_rm3);
		audio_play_sound(music_rm4,0,true);
	}
	instance_deactivate_all(true);
	display_powerups();
}


global.powerUpTiers=[];

global.powerUpTiers=[];

if(global.portal) {
	instance_create_layer(64,128, "Instances", obj_portal_purple);
	instance_create_layer(1216,480, "Instances", obj_portal_purple);
	instance_create_layer(64,480, "Instances", obj_portal_green);
	instance_create_layer(1216,128, "Instances", obj_portal_green);	
}
if(global.repnet) {
	instance_create_layer(64,320, "Instances", obj_rep_net_radius);
}
if(global.mirror) {
	instance_create_layer(0,0, "Instances", obj_player_clone);	
}