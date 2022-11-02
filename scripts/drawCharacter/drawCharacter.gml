function drawCharacter(){
	
	var gro = 0;
	
	var xx = x; var yy = y;
	
	var al = 1;
	var c = c_white;
	
	if(pc.xMouse == xSpot && pc.yMouse == ySpot){ xx -= 4; yy -= 4; gro = 1; }
	
	
	if(face < 0){
		//c = c_black;
		xx += 32 + (gro * 4);
	}
	
	
	draw_sprite_ext(sprite_index, image_index, xx, yy, (image_xscale+gro)*face, (image_yscale+gro), 0, c, al);
	
	
}