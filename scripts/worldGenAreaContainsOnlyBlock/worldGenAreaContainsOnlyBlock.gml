function worldGenAreaContainsOnlyBlock(x1, y1, x2, y2){
	
	for(var a=x1; a<=x2; a++){
		for(var b=y1; b<=y2; b++){
			if(!inBounds(a, b)){ continue; }
			
			if(ww.bmap[a, b] == noone){ return false; }
		}
	}
	
	return true;
}