function mobMove(a, b){
	
	if(characterCanMoveFromTo(xSpot, ySpot, a, b)){
		if(pc.xSpot != a || pc.ySpot != b){
			if(ww.fmap[a, b] != imgFloorStairDown && ww.fmap[a, b] != imgFloorStairUp){
				ww.mmap[xSpot, ySpot] = noone;
				xSpot = a; ySpot = b;
				ww.mmap[xSpot, ySpot] = id;
			}
		}
	}

}