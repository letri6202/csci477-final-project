/// @description Insert description here
// You can write your code in this editor

unused=false;
notCurrOption=true;

//randomize();
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
	
	for(i=0; i<array_length(global.currOptions);i++){
		if(index==global.currOptions[i]){
			notCurrOption=false;
			break;
		} else{
			notCurrOption=true;	
		}
	}

} until(unused && notCurrOption)

for(i=0; i<array_length(global.currOptions);i++){
	if(global.currOptions[i]==-1){
		global.currOptions[i]=index;
	}
}
