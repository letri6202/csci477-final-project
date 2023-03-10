/// @description Insert description here
// You can write your code in this editor

var upgrade = irandom(2);
switch upgrade {
	case 0: lsr_spd+=.50;
	break;
	case 1: spd+=.5;
	break; 
	case 2: firerate-=.30;
	break;
}
alarm[1] = 1800;