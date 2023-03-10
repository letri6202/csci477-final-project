/// @description Insert description here
// You can write your code in this editor

//Set up variables for points


enum game_states {
	Playing,
	Paused,
	Choosing,
	GameOver,
	Waiting,
}
global.playerPts=0;
global.AIPts=0;
global.game_state = game_states.Waiting;
global.maglsr = false;
global.magpck = false;