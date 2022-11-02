function characterCanMoveFromTo(x1, y1, x2, y2){
	if(tileCanBlock(x2, y2)){ return false; }
	if(ww.mmap[x2, y2] != noone){ return false; }
	
	
	if(x1 < x2){ 
		if(y1 > y2){
			if(tileCanBlock(x1, y1-1) && tileCanBlock(x1+1, y1)){ return false; }
		}
		
		if(y1 < y2){
			if(tileCanBlock(x1, y1+1) && tileCanBlock(x1+1, y1)){ return false; }
		}
	}
	
	if(x1 > x2){ 
		if(y1 > y2){
			if(tileCanBlock(x2, y2-1) && tileCanBlock(x2+1, y2)){ return false; }
		}
		
		if(y1 < y2){
			if(tileCanBlock(x2, y2+1) && tileCanBlock(x2+1, y2)){ return false; }
		}
	}
		
	return true;
}