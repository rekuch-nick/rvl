function worldGenRoomsSmart(){
	
	for(var a=0; a<43; a++){ for(var b=0; b<25; b++){ 
		fmap[a, b] = imgFloor;
		bmap[a, b] = imgBlock; }}
	
	
	var tries = 0;
	var roomNumber = 1;
	while(tries < 1000 && roomNumber <= 7){
		tries ++;
		
		var r = worldGenCreateRoomBlueprint();
		
		
		if(worldGenAreaContainsOnlyBlock(r.x1-1, r.y1-1, r.x2+1, r.y2+1) 
				//&& r.w % 2 == 0 && r.h & 2 == 0
				//&& r.x1 % 2 == 0 && r.y1 % 2 == 0
		
				){
			
			//gen room
			for(var a=r.x1; a<=r.x2; a++){
				for(var b=r.y1; b<=r.y2; b++){
					if(bmap[a, b] == imgBlock){ 
						//bmap[a, b] = noone; 
						fmap[a, b] = roomNumber;
						//fmap[a, b] = imgFloorWater;
					}
				}
			}
			roomNumber ++;
			
		}
	}
	
	worldGenMaze();
	
	
	roomNumber --;
	while(roomNumber > 0){
		
		
		
		do{
			var a = irandom_range(0, 42);
			var b = irandom_range(0, 24);
			
			var isBlock = bmap[a, b] != noone;
			var numTargetRoom = 0;
			var numWalls = 0
			
			for(var aa=a-1; aa<a+1; aa++){ for(var bb=b-1; bb<b+1; bb++){
				if(aa == a && bb == b){ continue; }
				if(aa != a && bb != b){ continue; }
				if(!inBounds(aa, bb)){ numWalls ++; continue; }
				if(bmap[aa, bb] == imgBlock){ numWalls ++; }
				if(fmap[aa, bb] == roomNumber){ numTargetRoom ++; }

			}}
			
			
		} until (isBlock && numTargetRoom == 1 && numWalls == 2);
		
		
		
		bmap[a, b] = noone;
		roomNumber --;
	}
	
	
	
	for(var a=0; a<43; a++){ for(var b=0; b<25; b++){ 
		var f = fmap[a, b]; 
		
		if(f != imgFloor){
			fmap[a, b] = imgFloor;
			bmap[a, b] = noone;
		}
	}}
	
	
	

	

}