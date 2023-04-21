/// @description Insert description here
// You can write your code in this editor
image_angle = point_direction(x,y,mouse_x,mouse_y);

y = room_height - global.playery;
x = global.playerx;
if ( (keyboard_check(vk_space)&&ready) || (mouse_check_button_pressed(mb_left) && ready)) {
	alarm[0] = firerate;
	ready = false;
	instance_create_layer(x, y, "Instances", obj_laser_clone);
}