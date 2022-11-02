function mobTurn(){
	
	var disToPlayer = abs(xSpot - pc.xSpot) + abs(ySpot - pc.ySpot);
	
	if(disToPlayer == 0){
		hp = 0; return;
	}
	
	if(disToPlayer == 1){
		meleeAttack(id, pc); return;
	}
	
	state = "wander";
	
	if(canSeeCreature(id, pc)){
		state = "hunt";
	}
	
	
	
	
	if(state == "wander"){
		var xt = xSpot; var yt = ySpot;
		var r = irandom_range(1, 16);
		
		if(r == 1){ yt --; }
		if(r == 2){ xt ++; }
		if(r == 3){ yt ++; }
		if(r == 4){ xt --; }
		if(r == 5){ xt --; yt --; }
		if(r == 6){ xt --; yt ++; }
		if(r == 7){ xt ++; yt --; }
		if(r == 8){ xt ++; yt ++; }
		
		mobMove(xt, yt);
		
		
	}
	
	if(state == "hunt"){
		var spt = path(xSpot, ySpot, pc.xSpot, pc.ySpot);
		if(spt != noone){
			var xt = spt.a; var yt = spt.b;
			mobMove(xt, yt);
		}
	}
}