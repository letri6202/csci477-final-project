// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function display_powerups(){
	instance_create_layer(room_width/2, room_height/2, "Instances", obj_powerup);
	instance_create_layer((room_width/2) + 200, room_height/2, "Instances", obj_powerup);
	instance_create_layer(room_width/2 - 200, room_height/2, "Instances", obj_powerup);
}