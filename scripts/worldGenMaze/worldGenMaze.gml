function worldGenMaze(){
	
	
	
	//create nodes
	nodes = 0;
	for(var a=0; a<43; a+=2){ for(var b=0; b<25; b+=2){
		if(fmap[a, b] == imgFloor){ bmap[a, b] = "node"; nodes ++; }
	}}
	
	
	do{
		cx = irandom_range(0, 42);
		cy = irandom_range(0, 24);
	} until (bmap[cx, cy] == "node");
	
	bmap[a, b] = noone;
	nodes --;
	
	d[1] = false; d[2] = false; d[3] = false; d[4] = false;
	xLast[0] = cx; yLast[0] = cy; last = 0;
	tries = 0;
	while(nodes > 0 && tries < 10000){
		tries ++;
		
		if(d[1] && d[2] && d[3] && d[4]){
			d[1] = false; d[2] = false; d[3] = false; d[4] = false;
			
			last --;
			
			if(last < 0){ break; }
			
			cx = xLast[last];
			cy = yLast[last];
		} else {
			
			do{
				tx = cx; ty = cy;
				ttx = cx; tty = cy;
				var r = irandom_range(1, 4);
				if(r == 1){ ty = cy - 1; tty = cy - 2; }
				if(r == 2){ tx = cx + 1; ttx = cx + 2; }
				if(r == 3){ ty = cy + 1; tty = cy + 2; }
				if(r == 4){ tx = cx - 1; ttx = cx - 2; }
			} until (d[r] == false);
			
			d[r] = true;
			
			if(inBounds(ttx, tty)){
				if(bmap[ttx, tty] == "node"){
					bmap[tx, ty] = noone;
					bmap[ttx, tty] = noone;
					nodes --;
					last ++;
					xLast[last] = ttx;
					yLast[last] = tty;
					cx = ttx; 
					cy = tty;
					d[1] = false; d[2] = false; d[3] = false; d[4] = false;
				}
				
				
			}
		}
		
		
	}
	
	

}