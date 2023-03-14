/// @description Insert description here
// You can write your code in this editor

//Establish varible for speed
spd = global.lsrspd;
dir = obj_player.image_angle;
image_angle = dir;
motion_add(dir, spd);
magnetic = global.maglsr;
bounces = global.bounces;
if(global.greenlsr){
	if(global.purplsr){
		if(global.pinklsr){
			sprite_index = spr_laser_pink;
		}
		else{
			sprite_index = spr_laser_purple;
		}
	}
	else {
		image_blend = c_lime;
	}
}