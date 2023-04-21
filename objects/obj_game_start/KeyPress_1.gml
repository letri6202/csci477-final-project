/// @description Insert description here
// You can write your code in this editor

if(pageCount = 0) {
	global.level += 1;
	pageCount+= 1; 
	var lay_id = layer_get_id("Background");
	var back_id = layer_background_get_id(lay_id);
	layer_background_sprite(back_id, spr_tutorial);
} else {		
	room_goto_next();
}
