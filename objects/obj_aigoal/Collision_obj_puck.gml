global.playerPts += 1;
obj_controller.points_scored += 1;
scr_score();
instance_destroy(other);
instance_create_layer(640,320,"Instances",obj_puck);
instance_deactivate_all(true);
display_powerups();