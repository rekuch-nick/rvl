function drawTextColor(xx, yy, s, c){
	
	draw_rectangle_color(xx, yy, xx+string_width(s), yy+string_height(s), c_black, c_black, c_black, c_black, false);
	draw_text_color(xx, yy, s, c, c, c, c, 1);

}