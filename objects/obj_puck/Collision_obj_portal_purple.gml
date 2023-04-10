/// @description Insert description here
// You can write your code in this editor

if(x < room_width/2) { //check if puck hit left portal
	x = 1216 + sprite_width;
	y = 480;
}
else { //otherwise it hit the right portal
	x = 64 + sprite_width;
	y = 128;
}

