/// @description Insert description here
// You can write your code in this editor
image_angle = point_direction(x,y,mouse_x,mouse_y);


if (keyboard_check(ord("W")) && y > 0) {
	y -= spd;	
}

if (keyboard_check(ord("S")) && y <	640) {
	y += spd;	
}

if (keyboard_check(vk_space)&&ready) {
	alarm[0] = firerate;
	ready = false;
	instance_create_layer(x, y, "Instances", obj_laser);
}
