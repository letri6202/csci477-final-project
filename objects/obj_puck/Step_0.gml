
if(place_meeting(x,y+1,obj_hwall)||place_meeting(x,y-1,obj_hwall)){
	direction = -direction;
}
else if(place_meeting(x+1,y,obj_vwall)||place_meeting(x-1,y,obj_vwall)){
	direction = 180 - direction;
}

