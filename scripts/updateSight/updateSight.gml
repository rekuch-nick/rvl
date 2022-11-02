function updateSight(){
	
	for(var a=0; a<43; a++){ for(var b=0; b<25; b++){
		see[a, b] = false;
		
		var dis = abs(xSpot - a) + abs(ySpot - b);
		
		if(dis <=1 || (dis == 2 && xSpot != a && ySpot != b) ){
			see[a, b] = true;
			
		} else if( dis <= sightRange ){
			var l = getLine(xSpot, ySpot, a, b);
			
			if(!lineIsBlocked(l)){ see[a, b] = true; }
			
			//see[a, b] = true;
		}
	}}
	
	
	
	
	for(var a=0; a<43; a++){ for(var b=0; b<25; b++){
		if(see[a, b]){
			var t = imgMemFloor;
			
			if(ww.bmap[a, b] != noone){ t = imgMemBlock; }
			//if(ww.fmap[a, b] != noone){ t = imgMemBlock; }
			
			
			ww.rmap[a, b] = t;
		}
		
	}}
}