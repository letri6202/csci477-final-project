if(place_meeting(x,y+vspeed,obj_wall)){
	direction = -direction;
	
}
else if(place_meeting(x+hspeed,y,obj_wall)){
	direction = 180 - direction;
}

