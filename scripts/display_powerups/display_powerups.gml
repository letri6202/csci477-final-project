// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function display_powerups(){
	var p1= instance_create_layer(room_width/2, room_height/2, "Instances", obj_powerup);
	var p2=instance_create_layer((room_width/2) + 200, room_height/2, "Instances", obj_powerup);
	var p3= instance_create_layer(room_width/2 - 200, room_height/2, "Instances", obj_powerup);
	/*
	do{
		var p2=instance_create_layer((room_width/2) + 200, room_height/2, "Instances", obj_powerup);
	} until (p1.index!=p2.index)
	
	do{
		var p3= instance_create_layer(room_width/2 - 200, room_height/2, "Instances", obj_powerup);	
	} until (p1.index!= p3.index && p2.index!=p3.index)
	*/
}