/// @description Insert description here
// You can write your code in this editor

if(global.barrierHP > 0) {
	instance_create_layer(63,318, "Instances", obj_barrier);
}

if(global.AIPts==7){
	room_goto(rm_end_of_game);
}
