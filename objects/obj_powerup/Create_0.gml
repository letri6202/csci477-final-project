/// @description Insert description here
// You can write your code in this editor

unused=false;


randomize();

do{

	index=irandom_range(1,20);
	for(i=0; i<array_length(global.powerups); i++){
		if (index==global.powerups[i]){
			unused=false;
			break;
		} else{
			unused=true;	
		}
	}

} until(unused);
