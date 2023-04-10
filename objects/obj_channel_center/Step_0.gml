/// @description Insert description here
// You can write your code in this editor

r_x = x- obj_puck.x;
r_y = y-obj_puck.y;
rmag = vector_length(r_x,r_y);
acc_x = 9.81 * r_x / (rmag*rmag) ;
acc_y = 9.81 * r_y / (rmag*rmag) ;

