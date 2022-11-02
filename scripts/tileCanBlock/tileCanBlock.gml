function tileCanBlock(a, b){
	if(!inBounds(a, b)){ return true; }
	
	if(ww.bmap[a, b] != noone){ return true; }
	
	return false;
}