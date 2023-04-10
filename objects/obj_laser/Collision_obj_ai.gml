/// @description Insert description here
// You can write your code in this editor
instance_destroy(self);

if(global.stun) {
	global.AIstunned = true;
	obj_ai.alarm[2] = .25 * room_speed;
}

