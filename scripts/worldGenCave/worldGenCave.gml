function worldGenCave(){
	
	
	
	
	for(var a=0; a<43; a++){ for(var b=0; b<25; b++){
		if(irandom_range(1, 2) == 1){ bmap[a, b] = imgBlock; }
	}}
	for(var i=0; i<5; i++){
		for(var a=0; a<43; a++){ for(var b=0; b<25; b++){
			
			var adjBlock = 0; var adjSpace = 0;
			for(var aa=a-1; aa<=a+1; aa++){ for(var bb=b-1; bb<=b+1; bb++){
				if(aa == a && bb == b){ continue; }
				if(!inBounds(aa, bb)){ continue; }
				if(bmap[aa, bb] != noone){ adjBlock ++; }
				if(bmap[aa, bb] == noone){ adjSpace ++; }
			}}
			
			if(adjBlock > adjSpace){ bmap[a, b] = imgBlock; }
			if(adjBlock < adjSpace){ bmap[a, b] = noone; }
		}}
	}


}