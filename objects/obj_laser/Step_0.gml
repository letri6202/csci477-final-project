/// @description Insert description here
// You can write your code in this editor

if(instance_exists(obj_puck)){
	if(magnetic){
		//direction of motion_add
		var d = point_direction(obj_puck.x,obj_puck.y,x,y);
		//speed of motion_add
		var s = 20/power(point_distance(obj_puck.x,obj_puck.y,x,y),1.4);
		obj_puck.vspeed -= s*dsin(d);
		if(d < 90 || d > 270){
			obj_puck.hspeed += s*dcos(d);
		}
	}
	if(obj_puck.magnetic){
		var d = point_direction(x,y,obj_puck.x,obj_puck.y);
		
		if(direction < 90 && d > 270){
			direction -= .6;
			image_angle -= .6;
		}
		else if((direction > 270 && d > 270)||(direction < 90 && d < 90)){
			if(d < direction){
				direction -= .6;
				image_angle -= .6;
			}
			else if(d > direction){
				direction += .6;
				image_angle += .6;
			}
		}
		else if(direction > 270 && d < 90){
			direction += .6;
			image_angle += .6;
		}
	}
}
if(global.bounce && isdelay){
	if(place_meeting(x,y+vspeed,obj_wall)){
		direction = -direction;
		image_angle = -image_angle;
		isdelay = false;
	}
	else if(place_meeting(x+hspeed,y,obj_wall)){
		direction = 180 - direction;
		image_angle = 180 - image_angle;
		isdelay = false;
	}
	
}




	if(instance_exists(repshld)) {
		repshld.x = x;
		repshld.y = y;
		repshld.image_angle = image_angle;
	}
