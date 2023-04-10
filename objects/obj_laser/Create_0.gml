/// @description Insert description here
// You can write your code in this editor

//Establish varible for speed
spd = global.lsrspd;
dir = obj_player.image_angle;
image_angle = dir;
motion_add(dir, spd);
magnetic = global.maglsr;
isdelay = false;
alarm[0] = 10;
firstCollision = true;
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


if(global.repshld) {
	if(global.laser_large) {
		repshld = instance_create_layer(x+sprite_width, y, "Instances", obj_repshld_large);
	} else {
		repshld = instance_create_layer(x+sprite_width, y, "Instances", obj_repshld);	
	}
		repshld.x = x;
		repshld.y = y;
		repshld.image_angle = image_angle;
		repshld.image_alpha = 0.5;
}	