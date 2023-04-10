
if(other.firstCollision) {
	motion_add(other.dir,other.spd/5);
	other.firstCollision = false;
}

if(global.ghost == false) {
	instance_destroy(other);
} else {
		
}

