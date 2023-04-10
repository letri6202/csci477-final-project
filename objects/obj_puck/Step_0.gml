if(place_meeting(x,y+vspeed,obj_wall)){
	direction = -direction;
	
}
else if(place_meeting(x+hspeed,y,obj_wall)){
	direction = 180 - direction;
}
//Barrier collision
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
		
		//If puck is above center line, pull down
		if(y > room_height/2) {
			motion_add(90, .015);
		}
		else if( y < room_height/2) { //else pull up
			motion_add(270,.015);
		}
	}
}

if(global.repnet) {
	if(place_meeting(x,y,obj_rep_net_radius)) {
		//Add force from center of rep field towards puck
		rep_dir = point_direction(obj_rep_net_radius.x, obj_rep_net_radius.y, x, y);
		motion_add(rep_dir, .035);	
	}
}