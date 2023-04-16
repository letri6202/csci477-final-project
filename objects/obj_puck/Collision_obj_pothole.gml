/// @description Insert description here
// You can write your code in this editor

x=other.x + (2*hspeed);
y=other.y + (2*vspeed);

if(x>other.x+other.sprite_width/2 || x<other.x-other.sprite_width/2){
	hspeed/=4;
	vspeed/=4;
}