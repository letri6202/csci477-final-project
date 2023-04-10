/// @description Insert description here
// You can write your code in this editor

global.AIPts += global.shield_gambit_temp;
global.barrierHP += global.shield_gambit_temp;
instance_destroy(MinusButton);
instance_destroy(PlusButton);
instance_destroy(self);
global.gambit = true;
instance_activate_all();

