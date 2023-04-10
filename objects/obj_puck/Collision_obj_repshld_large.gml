/// @description Insert description here
// You can write your code in this editor
if(global.ghost) {
	motion_add(other.dir,other.spd/10 * 1.5);	
}
else {
	motion_add(other.dir,other.spd/10);	
}
instance_destroy(other);
