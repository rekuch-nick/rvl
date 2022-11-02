function worldGenPrep(){
	
	for(var z=0; z<20; z++){
	
		for(var a=0; a<43; a++){ for(var b=0; b<25; b++){
			fmap[a, b] = noone;
			bmap[a, b] = noone;
			mmap[a, b] = noone;
		}}
		
		
		
		for(var a=0; a<43; a++){ for(var b=0; b<25; b++){
			storedFMap[z][a, b] = fmap[a, b];
			storedBMap[z][a, b] = bmap[a, b];
			storedMMap[z][a, b] = mmap[a, b];
		}}
	}

}