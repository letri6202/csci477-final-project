/// @description Insert description here
// You can write your code in this editor

image_angle = point_direction(x,y,mouse_x,mouse_y);


if keyboard_check(ord("A")) {
	x -= spd;	
}

if keyboard_check(ord("D")) {
	x += spd;	
}

if mouse_check_button_pressed(mb_left) {
	instance_create_layer(x,y, "Instances", obj_laser);
}

