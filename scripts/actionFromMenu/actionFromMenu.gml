function actionFromMenu(t){
	
	
	if(t == "go down"){
		loadFloor(pc.zSpot + 1);
	}
	
	if(t == "go up"){
		loadFloor(pc.zSpot - 1);
	}
	
	if(t == "wait"){
		pc.timePassesNow = true;
	}
	
	
	pc.icd = 4;
}