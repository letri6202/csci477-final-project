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