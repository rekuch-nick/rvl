function worldGen(){
	
	
	
	
	for(var z=0; z<21; z++){
		for(var a=0; a<43; a++){ for(var b=0; b<25; b++){
			fmap[a, b] = imgFloor;
			bmap[a, b] = noone;
			mmap[a, b] = noone;
			
			rmap[a, b] = noone;
		}}
		
		
		if(z == 0){
			for(var a=0; a<43; a++){ for(var b=0; b<25; b++){ 
				if(irandom_range(1, 30) == 1){ bmap[a, b] = imgBlockTree; }
				fmap[a, b] = imgFloorGrass;
			}}
			
			fmap[21, 13] = imgFloorStairDown;
			bmap[20, 13] = noone; bmap[21, 13] = noone; bmap[20, 12] = noone; bmap[20, 14] = noone;
			bmap[pc.xSpot, pc.ySpot] = noone;
			
		//} else if (z == 1) {
			
			//worldGenRoomsSmart();
			
			
		//} else if (z % 2 == 0) {
		} else if (z > 0) {
			
			worldGenRooms();
			worldGenStairByZ(z);
			
			
			
		
			
		} else {
		
			worldGenCave(); 
			worldGenStairByZ(z);
			
			for(var a=0; a<43; a++){ for(var b=0; b<25; b++){
				if(z > 0 && bmap[a, b] == noone && irandom_range(1, 12) == 1){ mmap[a, b] = objMob; }
			}}
		}
		
		
		
	
		
		// create stairs up by above floor
		if(z > 0){
			for(var a=0; a<43; a++){ for(var b=0; b<25; b++){
				if(storedFMap[z-1][a, b] == imgFloorStairDown){
					bmap[a, b] = noone;
					fmap[a, b] = imgFloorStairUp;
				}
			}}
		}
		
		if(z > 0){
			for(var a=0; a<43; a++){ for(var b=0; b<25; b++){
				if(fmap[a, b] == imgFloorStairUp || fmap[a, b] == imgFloorStairDown){ continue; }
				if(z > 0 && bmap[a, b] == noone && irandom_range(1, 12) == 1){ mmap[a, b] = objMob; }
			}}
		}
		
		
		for(var a=0; a<43; a++){ for(var b=0; b<25; b++){
			storedFMap[z][a, b] = fmap[a, b];
			storedBMap[z][a, b] = bmap[a, b];
			storedMMap[z][a, b] = mmap[a, b];
			
			storedRMap[z][a, b] = rmap[a, b];
		}}
		
		
	}
	
	

}