/// @description Insert description here
// You can write your code in this editor

global.currOptions=array_create(3,-1);

switch(index){
	case 1:
	global.lsrspd += .75;
	break;
	case 2:
	global.playerspd += 2;
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
	case 9:
	if(global.AIPts > 0) {
		global.AIPts -= 1;
	}
	break;
	case 10:
	global.channel = true;
	break;
	case 11:
		global.barrierHP += 1;
	break;
	case 12:
	global.laser_large = true;
	break;
	case 13:
	//To prevent unnecessary instances from being created
		if(global.portal == false) {
			instance_create_layer(64,128, "Instances", obj_portal_purple);
			instance_create_layer(1216,480, "Instances", obj_portal_purple);
			instance_create_layer(64,480, "Instances", obj_portal_green);
			instance_create_layer(1216,128, "Instances", obj_portal_green);
		}
		else { //If portal true, controller creates portal on new room
			global.portal = true;	
		}
		break;
	case 14:
		if(global.repnet == false) {
			instance_create_layer(64,320, "Instances", obj_rep_net_radius);	
		}
		else {
			global.repnet = true	
		}
		break;
	case 15:
		global.stun = true;
		break;
	case 16:
		global.ghost = true;
		break;
	case 17:
		global.repshld = true;
		break;
	case 18:
		instance_destroy(obj_powerup);
		if(instance_exists(obj_controller)) {
			if(obj_controller.points_scored == 0) {
				instance_deactivate_all(true);	
				prompt_shield_gambit();
			} 
		} else {
				prompt_shield_gambit();	
			}
		break;
	case 19:
		if(!instance_exists(obj_player_clone)) {
			instance_create_layer(0,0, "Instances", obj_player_clone);
		}
		break;
	case 20: //could adjust values, not sure what max should be
		global.playerfirerate -= 5;
		if(global.playerfirerate <=0) {
			global.playerfirerate = 1;	
		}
		break;

}
var i = 0;
while(global.powerups[i] != 0){
	i+=1;
}
global.powerups[i] = index;
instance_destroy(obj_powerup);
if(index != 18) {
	instance_activate_all();
}

//Checking if player has just entered a new room
//If so, then call the countdown after the powerup is clicked.
if(instance_exists(obj_controller)) {
	if(obj_controller.points_scored == 0) {
		global.game_state = game_states.Waiting;
		obj_controller.alarm[0] = 180;
		instance_deactivate_all(true);	
		instance_activate_object(obj_controller);
	}	
}
