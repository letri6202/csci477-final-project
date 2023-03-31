/// @description Insert description here
// You can write your code in this editor
switch(index){
	case 1:
	global.lsrspd += .75;
	break;
	case 2:
	global.playerspd += 2;
	obj_player.spd += 2;
	break;
	case 3:
	global.maglsr = true;
	break;
	case 4:
	global.magpck = true;
	if(instance_exists(obj_puck)){
		obj_puck.magnetic = true;
	}
	break;
	case 5:
	global.bounce = true;
	break;
	case 6:
	global.greenlsr = true;
	break;
	case 7:
	global.purplsr = true;
	break
	case 8: 
	global.pinklsr = true;
	break;
}
var i = 0;
while(global.powerups[i] != 0){
	i+=1;
}
global.powerups[i] = index;
instance_destroy(obj_powerup);
instance_activate_all();

//Checking if player has just entered a new room
//If so, then call the countdown after the powerup is clicked.
if(obj_controller.points_scored == 0) {
	global.game_state = game_states.Waiting;
	obj_controller.alarm[0] = 180;
	instance_deactivate_all(true);	
	instance_activate_object(obj_controller);
}
