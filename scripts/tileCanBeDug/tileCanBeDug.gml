function tileCanBeDug(a, b){
	if(!inBounds(a, b)){ return true; }
	
	if(ww.bmap[a, b] == imgBlock){ return true; }
	if(ww.bmap[a, b] == imgBlock_1){ return true; }
	if(ww.bmap[a, b] == imgBlock_2){ return true; }
	if(ww.bmap[a, b] == imgBlock_3){ return true; }
	if(ww.bmap[a, b] == imgBlock_4){ return true; }
	
	return false;
}