/// @description Insert description here
// You can write your code in this editor

for( var i=0; i<instance_number(obj_open_sewer); i++){
	sewer[i]=instance_find(obj_open_sewer,i);	
}

if(other==sewer[0]){
	x=sewer[0].x+(2*hspeed)+10;
	y=sewer[0].y+(2*vspeed)+10;
} else{
	x=sewer[0].x+(2*hspeed)+10;
	y=sewer[0].y+(2*vspeed)+10;
}