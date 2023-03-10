/// @description Insert description here
// You can write your code in this editor

//Establish varible for speed
spd = obj_player.lsr_spd;
dir = obj_player.image_angle;
image_angle = dir;
motion_add(dir, spd);
magnetic = global.maglsr;