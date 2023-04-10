// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function prompt_shield_gambit(){
	instance_destroy(obj_powerup);
	global.shield_gambit_temp = 0;
	global.shield_gambit_max = 6 - global.AIPts;
	instance_create_layer(room_width/2 - 200, room_height/2, "Instances", MinusButton);
	instance_create_layer(room_width/2 + 200, room_height/2, "Instances", PlusButton);
	instance_create_layer(room_width/2, room_height/2 + 200, "Instances", ConfirmButton);
}