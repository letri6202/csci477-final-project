if(object_exists(obj_puck.object_index)){
	//keep the ai on the other side of the puck relative to
	//the center of the field
	if(obj_puck.y > 320 && y < 640 ){
		if((obj_puck.y*2)-320 > y) y += spd;
		else y -= spd;
	}
	else if (obj_puck.y <= 320 && y > 0){
		if((obj_puck.y*2)-320 < y) y -= spd;
		else y += spd;
	}
	//fire when ready
	if(ready){
		//set an alarm to ready the ai after time = firerate
		alarm[0] = firerate;
		ready = false;
		instance_create_layer(x, y, "Instances", obj_laser_enemy);
	}
	//advanced targeting
	//time_distance = distance between the ai and the puck, over
	//                laser speed
	//target_x & y  = obj_puck's position + puck speed * time_distance
	var time_distance = point_distance(x,y,obj_puck.x,obj_puck.y)/lsr_spd;
	var target_x = obj_puck.x+obj_puck.hspeed*time_distance;
	var target_y = obj_puck.y+obj_puck.vspeed*time_distance;
	//detect if the target is inside the walls/outside the room
	if(target_y < 64) target_y = abs(target_y)+64;
	if(target_y > 608) target_y = 608 - target_y % 608;
	if(target_x < 64) target_x = abs(target_x)+64;
	if(target_x > 1248) target_x = 1248 - target_x % 1248;
	//point the ai towards where the puck will be
	image_angle = point_direction(x,y,target_x,target_y);
	
}

