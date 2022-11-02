function pathPickCursor(){
	
	xBest = -1;
	yBest = -1;

	for(var a=0; a<43; a++){
		for(var b=0; b<25; b++){
		
			if(mapStatus[a, b] == "open"){
				if(xBest == -1 || costReal[a, b] + costGuess[a, b] < costReal[xBest, yBest] + costGuess[xBest, yBest]){
					xBest = a;
					yBest = b;
				}
			
			}
		
		}
	}

	xCursor = xBest;
	yCursor = yBest;

}