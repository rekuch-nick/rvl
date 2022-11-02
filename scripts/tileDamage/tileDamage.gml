function tileDamage(a, b){
	if(!inBounds(a, b)){ return true; }
	
	if(ww.bmap[a, b] == imgBlock){ 
		ww.bmap[a, b] = imgBlock_1;
		return true; }
	if(ww.bmap[a, b] == imgBlock_1){ 
		ww.bmap[a, b] = imgBlock_2;
		return true; }
	if(ww.bmap[a, b] == imgBlock_2){ 
		ww.bmap[a, b] = imgBlock_3;
		return true; }
	if(ww.bmap[a, b] == imgBlock_3){ 
		ww.bmap[a, b] = imgBlock_4;
		return true; }
	if(ww.bmap[a, b] == imgBlock_4){ 
		ww.bmap[a, b] = noone;
		return true; }
	
	return false;
}