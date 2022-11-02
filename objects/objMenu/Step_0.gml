if(firstFrame){
	firstFrame = false;
	cursorMax = array_length(txt);
	h = 32 * cursorMax;
}

cursor = -1;
if(pc.xMouse >= xStart && pc.xMouse < xStart + (w/32)){
	if(pc.yMouse >= yStart && pc.yMouse < yStart + (h/32)){
		cursor = pc.yMouse - yStart;
	}
}








if(mouse_check_button_pressed(mb_right)){
	pc.menu = noone; instance_destroy();
}

if(mouse_check_button_pressed(mb_left) && cursor != -1){
	pc.menuAction = act[cursor];
	pc.menu = noone; instance_destroy();
}
