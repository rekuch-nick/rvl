function path(xStart, yStart, xEnd, yEnd){
	

	///make array of all map locations set to unchecked
	for(var a=0; a<43; a++){
		for(var b=0; b<25; b++){
			mapStatus[a, b] = "unchecked";
		}	
	}

	///make array of all map location's parent cords set to -1
	for(var a=0; a<43; a++){
		for(var b=0; b<25; b++){
			xParent[a, b] = -1;
			yParent[a, b] = -1;
		}	
	}

	///make array of all map location's movement costs, can default to 0
	for(var a=0; a<43; a++){
		for(var b=0; b<25; b++){
			costReal[a, b] = 0;
			costGuess[a, b] = 0;
		}	
	}

	// clear the calling object's path list
	//ds_list_clear(xPath); ds_list_clear(yPath);

	//target bounds checks
	while(xEnd < 0){ xEnd ++; }
	while(yEnd < 0){ yEnd ++; }
	while(xEnd >= 43){ xEnd --; }
	while(yEnd >= 25){ yEnd --; }

	if(xStart == xEnd && yStart == yEnd){ return; }
	
	xCursor = xStart;
	yCursor = yStart;
	mapStatus[xStart, yStart] = "open";


	status = "not done";
	while(status == "not done"){
	
		pathPickCursor();
	
		if(xCursor == -1){
			status = "no path";
			break;
		}
	
		mapStatus[xCursor, yCursor] = "closed";
	
		if(xCursor == xEnd && yCursor == yEnd){
			status = "found path";
			break;
		}
	
		//look in all 8 adjacent spaces
		for(var dir=1; dir<=8; dir++){
			if(dir == 1){ cx = xCursor; cy = yCursor - 1; }
			if(dir == 2){ cx = xCursor + 1; cy = yCursor; }
			if(dir == 3){ cx = xCursor; cy = yCursor + 1; }
			if(dir == 4){ cx = xCursor - 1; cy = yCursor; }
			if(dir == 5){ cx = xCursor - 1; cy = yCursor - 1; }
			if(dir == 6){ cx = xCursor - 1; cy = yCursor + 1; }
			if(dir == 7){ cx = xCursor + 1; cy = yCursor - 1; }
			if(dir == 8){ cx = xCursor + 1; cy = yCursor + 1; }
		
			//bounds check
			if(cx < 0 || cy < 0 || cx >= 43 || cy >= 25){ continue; }
		
			//block check
			if(cx != xEnd || cy != yEnd){
				//if( tileCanBlock(cx, cy)){ continue; }
				if( !characterCanMoveFromTo(xCursor, yCursor, cx, cy) ){ continue; }
			}
		
			//assign movement cost and parrent values
			if(mapStatus[cx, cy] == "unchecked" || 
						costReal[cx, cy] > costReal[xCursor, yCursor] + 1) {
				mapStatus[cx, cy] = "open";
				costReal[cx, cy] = costReal[xCursor, yCursor] + 1;
				costGuess[cx, cy] = abs(cx - xEnd) + abs(cy - yEnd);
				xParent[cx, cy] = xCursor;
				yParent[cx, cy] = yCursor;
			}
		
		}
	
	
	}



	if(status == "found path"){
		// return the next step to take
		var xx = xEnd; var yy = yEnd;
		do {
	
			var xxx = xParent[xx, yy];
			var yyy = yParent[xx, yy];
			
			if(xxx == xStart && yyy == yStart){
				return { a: xx, b: yy }
			}
			
			xx = xxx;
			yy = yyy;
		
		} until (xx == xStart && yy == yStart)
		return noone;
		
		
		//write the path to a list
		/*
		var xx = xEnd; var yy = yEnd;
		xTemp = ds_list_create();
		yTemp = ds_list_create();
	
	
		do {

			ds_list_add(xTemp, xx);
			ds_list_add(yTemp, yy);
	
			var xxx = xParent[xx, yy];
			var yyy = yParent[xx, yy];
	
			xx = xxx;
			yy = yyy;
		
		} until (xx == xStart && yy == yStart)
	
		s = "found path of " + string(ds_list_size(xTemp));
		s += " from " + string(xStart) + ", " + string(yStart);
		s += " to " + string(xEnd) + ", " + string(yEnd);
		//_debug_message(s);
	
		//reverse the temp list into the object's path list
		for(var i=ds_list_size(xTemp)-1; i>=0; i--){
			ds_list_add(xPath, ds_list_find_value(xTemp, i));
			ds_list_add(yPath, ds_list_find_value(yTemp, i));
		}
		*/
	
	} else {
		//exit without giving a path
		return noone;
	
	}
















}