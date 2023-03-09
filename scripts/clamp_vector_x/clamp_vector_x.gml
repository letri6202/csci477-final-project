// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function clamp_vector_x(argument0, argument1, argument2){
	var vec_x = argument0;
	var vec_y = argument1;
	var max_length = argument2;
	
	var length = vector_length(vec_x,vec_y);
	
	if(length != 0) {
		vec_x /= length;	
	}
	
	var new_length = min(max_length, length);
	
	return (vec_x * new_length);
}