/// @description Insert description here
// You can write your code in this editor
switch(index){
	case 1:
	obj_player.lsr_spd += .75;
	break;
	case 2:
	obj_player.spd += 1;
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
}
instance_destroy();
