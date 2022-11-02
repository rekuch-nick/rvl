function mobMove(a, b){
	
	if(characterCanMoveFromTo(xSpot, ySpot, a, b)){
		if(pc.xSpot != a || pc.ySpot != b){
			ww.mmap[xSpot, ySpot] = noone;
			xSpot = a; ySpot = b;
			ww.mmap[xSpot, ySpot] = id;
		}
	}

}