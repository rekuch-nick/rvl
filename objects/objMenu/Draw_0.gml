draw_rectangle_color(x, y, x+w, y+h, c_black, c_black, c_black, c_black, false);


for(var i=0; i<cursorMax; i++){
	drawTextColor(x, y+(i*32) + 8, txt[i], col[i]);
}



if(cursor != -1){
	draw_set_alpha(.6);
	draw_rectangle_color(x, y + cursor*32, x+w, y + cursor*32 + 32, c_yellow, c_yellow, c_yellow, c_yellow, false);
	draw_set_alpha(1);
}