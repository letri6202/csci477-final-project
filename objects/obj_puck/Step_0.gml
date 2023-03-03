
if(place_meeting(x,y+1,obj_wall)||place_meeting(x,y-1,obj_wall)){
	direction = -direction;
}
else if(place_meeting(x+1,y,obj_wall)||place_meeting(x-1,y,obj_wall)){
	direction = 180 - direction;
}