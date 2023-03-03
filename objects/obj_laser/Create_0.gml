/// @description Insert description here
// You can write your code in this editor

//Establish varible for speed
spd =10;

direction = obj_player.image_angle;
//direction=point_direction(x,y, mouse_x , mouse_y );
//phy_rotation = -direction;//it's like image angle for bullets



//physics_apply_impulse(x, y, mouse_x - x, mouse_y - y);


var cue_x,cue_y;

var dir_vec_x = mouse_x - x;
var dir_vec_y = mouse_y - y;
var length = vector_length(dir_vec_x, dir_vec_y);

dir_vec_x /= length;
dir_vec_y /= length;

cue_x = x - (dir_vec_x * 16);
cue_y = y - (dir_vec_y * 16);
cue_dir = point_direction(cue_x,cue_y,x,y);

var pull_vec_x = x - mouse_x;
var pull_vec_y = y - mouse_y;

var dot = dot_product(pull_vec_x, pull_vec_y, dir_vec_x, dir_vec_y);
var	project_vec_x = dir_vec_x * dot;
var	project_vec_y = dir_vec_y * dot;

var cue_vector_x = clamp_vector_x(project_vec_x, project_vec_y, 64);
var cue_vector_y = clamp_vector_y(project_vec_x, project_vec_y, 64);

cue_x = cue_vector_x - (dir_vec_x * 16);
cue_y = cue_vector_y - (dir_vec_y * 16);

physics_apply_force(x,y,cue_vector_x, cue_vector_y);