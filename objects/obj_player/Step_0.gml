/// @description Insert description here
// You can write your code in this editor
image_angle = point_direction(x,y,mouse_x,mouse_y);
global.playerx = x;
global.playery = y;

if (keyboard_check(ord("W")) && y > 0) {
	y -= spd;	
}

if (keyboard_check(ord("S")) && y <	640) {
	y += spd;	
}

if ((keyboard_check(vk_space)&&ready) || (mouse_check_button_pressed(mb_left) && ready)) {
	alarm[0] = global.playerfirerate;
	ready = false;
	instance_create_layer(x, y, "Instances", obj_laser);
}
