function createMenu(note){
	
	var a = (xMouse + 1) * 32;
	var b = yMouse * 32;
	pc.menu = instance_create_depth(a, b, -7000, objMenu);
	var i = 0;
	
	if(note == "explore"){
		
		pc.menu.txt[i] = "Wait";
		pc.menu.col[i] = c_white;
		pc.menu.act[i] = "wait";
		pc.menu.note[i] = "";
		i ++;
		
		if(ww.fmap[pc.xSpot, pc.ySpot] == imgFloorStairDown	){
			pc.menu.txt[i] = "Go down stairs";
			pc.menu.col[i] = c_white;
			pc.menu.act[i] = "go down";
			pc.menu.note[i] = "";
			i ++;
		}
		
		if(ww.fmap[pc.xSpot, pc.ySpot] == imgFloorStairUp	){
			pc.menu.txt[i] = "Go up stairs";
			pc.menu.col[i] = c_white;
			pc.menu.act[i] = "go up";
			pc.menu.note[i] = "";
			i ++;
		}
		
		
		
		
	}
	
	
	
}