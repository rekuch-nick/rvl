function worldGenStairByZ(z){
	
	var xMin = 0; var yMin = 0; var xMax = 42; var yMax = 24;
	
	if(z % 2 == 0){
		xMax = 3;
	} else {
		xMin = 39;
	}
	
	
	var tries = 0;
	do{
		tries ++; var ok = true;
		
		var a = irandom_range(xMin, xMax);
		var b = irandom_range(yMin, yMax);
		
		if(isTileBlock(a-1, b)){ ok = false; }
		if(isTileBlock(a+1, b)){ ok = false; }
		if(isTileBlock(a, b+1)){ ok = false; }
		if(isTileBlock(a, b-1)){ ok = false; }
		
	} until (tries > 100 || ok);
	
	bmap[a, b] = noone;
	fmap[a, b] = imgFloorStairDown;
}