function loadFloor(n){
	
	if(n < 0 || n >= array_length(ww.storedFMap)){ return; }
	pc.updateSightNow = true;
	
	
	if(pc.zSpot != -1){
	
		//'save'
		var z = pc.zSpot;
		for(var a=0; a<43; a++){ for(var b=0; b<25; b++){
			ww.storedFMap[z][a, b] = ww.fmap[a, b];
			ww.storedBMap[z][a, b] = ww.bmap[a, b];
			ww.storedRMap[z][a, b] = ww.rmap[a, b];
			ww.storedMMap[z][a, b] = noone;
			if(ww.mmap[a, b] != noone){
				ww.storedMMap[z][a, b] = ww.mmap[a, b].object_index;
				instance_destroy(ww.mmap[a, b]);
			}
		}}
		
	}
	
	
	pc.zSpot = n;
	z = n;
	
	//'load'
	for(var a=0; a<43; a++){ for(var b=0; b<25; b++){
		ww.fmap[a, b] = ww.storedFMap[z][a, b];
		ww.bmap[a, b] = ww.storedBMap[z][a, b];
		ww.rmap[a, b] = ww.storedRMap[z][a, b];
		
		ww.mmap[a, b] = noone;
		if(ww.storedMMap[z][a, b] != noone){
			ww.mmap[a, b] = instance_create_depth(a*32, b*32, -3000, ww.storedMMap[z][a, b]);
		}
	}}
}