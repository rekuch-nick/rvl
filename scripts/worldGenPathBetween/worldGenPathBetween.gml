function worldGenPathBetween(a, b, aa, bb){
	
	var x1 = min(a, aa);
	var y1 = min(b, bb);
	var x2 = max(a, aa);
	var y2 = max(b, bb);
	
	var kind = choose(1, 2);
	
	a = x1; b = y1;
	if(bmap[a, b] == imgBlock){ bmap[a, b] = imgFloor; }
	
	if(kind == 1){
		
		while(a < x2){
			a ++;
			if(bmap[a, b] == imgBlock){ bmap[a, b] = imgFloor; }
		}
		while(b < y2){
			b ++;
			if(bmap[a, b] == imgBlock){ bmap[a, b] = imgFloor; }
		}
		
	} else if (kind == 2){
		
		while(b < y2){
			b ++;
			if(bmap[a, b] == imgBlock){ bmap[a, b] = imgFloor; }
		}
		while(a < x2){
			a ++;
			if(bmap[a, b] == imgBlock){ bmap[a, b] = imgFloor; }
		}
		
	}
	
	
}