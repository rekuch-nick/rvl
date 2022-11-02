if(instance_number(objScreen) <= 0){ 
	draw_set_alpha(.5);
	draw_rectangle_color(xMouse*32, yMouse*32, xMouse*32+31, yMouse*32+31, c_yellow, c_yellow, c_yellow, c_yellow, false);
	draw_set_alpha(1);
}


drawCharacter();


