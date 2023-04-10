if(place_meeting(x,y+vspeed,obj_wall)){
	direction = -direction;
	
}
else if(place_meeting(x+hspeed,y,obj_wall)){
	direction = 180 - direction;
}

if(place_meeting(x,y+vspeed,obj_barrier)){
	direction = -direction;
	global.barrierHP -= 1;
}
else if(place_meeting(x+hspeed,y,obj_barrier)){
	direction = 180 - direction;
	global.barrierHP -= 1;
}

if(global.channel == true) { 
	if(distance_to_object(obj_channel_center) > 0) { //As long as puck is not directly at the center
		//Push puck in direction of channel center
		//var _dir = point_direction (x, y, obj_channel_center.x, obj_channel_center.y);
		//motion_add(_dir, .05);
		
		if(y > room_height/2) {
			motion_add(90, .015);
		}
		else if( y < room_height/2) {
			motion_add(270,.015);
		}
	}
}

if(global.repnet) {
	if(place_meeting(x,y,obj_rep_net_radius)) {
		motion_add(0, .035);	
	}
}