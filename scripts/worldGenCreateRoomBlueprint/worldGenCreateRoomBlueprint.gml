function worldGenCreateRoomBlueprint(){
	
	var wt = irandom_range(4, 10);
	var ht = irandom_range(3, 6);
	
	var x1t = irandom_range(0, 42-wt);
	var y1t = irandom_range(0, 24-ht);
	
	var x2t = x1t + wt;
	var y2t = y1t + ht;
	
	var xPointt = irandom_range(x1t+1, x2t-1);
	var yPointt = irandom_range(y1t+1, y2t-1);
	
	return {
		x1: x1t,
		y1: y1t,
		x2: x2t,
		y2: y2t,
		w: wt,
		h: ht,
		xPoint: xPointt,
		yPoint: yPointt,
	}
	
}