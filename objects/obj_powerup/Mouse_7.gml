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
	global.bounces += 1;
	break;
}
var i = 0;
while(global.powerups[i] != 0){
	i+=1;
}
global.powerups[i] = index;
instance_destroy();
