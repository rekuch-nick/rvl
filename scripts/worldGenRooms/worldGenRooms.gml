function worldGenRooms(){
	
	for(var a=0; a<43; a++){ for(var b=0; b<25; b++){ bmap[a, b] = imgBlock; }}
	
	var xLast = -1;
	var yLast = -1;
	
	var tries = 0;
	while(tries < 10000){
		tries ++;
		
		var r = worldGenCreateRoomBlueprint();
		
		
		if(worldGenAreaContainsOnlyBlock(r.x1-1, r.y1-1, r.x2+1, r.y2+1)){
			
			//gen room
			for(var a=r.x1; a<=r.x2; a++){
				for(var b=r.y1; b<=r.y2; b++){
					if(bmap[a, b] == imgBlock){ bmap[a, b] = noone; }
				}
			}
			
			//path to last x if valid
			if(xLast != -1){
				worldGenPathBetween(r.xPoint, r.yPoint, xLast, yLast);
			}
			
			xLast = r.xPoint; yLast = r.yPoint;
			
			
		}
		
	}
	
	
	
	
	//replace path marks with actual spaces
	for(var a=0; a<43; a++){ for(var b=0; b<25; b++){
		if(bmap[a, b] == imgFloor){ bmap[a, b] = noone; }
	}}
}