/// @description Insert description here
// You can write your code in this editor
draw_set_font(fnt_gambitPrompt);
draw_set_color(c_white);
if(global.winner){
	draw_text(380,30,"CONGRATULATIONS! YOU WIN!!!!");	
} else{
	draw_text(350,30,"CONGRATULATIONS! YOU LOSE!!!! HAHAHAHA");	
}
 
 //Credits
 draw_text(266,320,"Developers- Tri Le, Max Hampton, Connor McGovern");
 draw_text(544,450,"Lets Go Stars!");
 draw_text(266,500,"Lets Go Avs!");
 draw_line_width(266,510,500,510,4);
 draw_text(596,500,"Broncos Country: Lets Ride!");

