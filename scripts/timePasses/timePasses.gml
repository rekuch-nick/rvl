function timePasses(){


	
	
	
	
	
	//monster turns
	with(objMob){
		
		var tn = turnChance;
		while(tn > 0){
			var roll = irandom_range(0, 99);
			if(tn > roll){
				mobTurn();
			}
			tn -= 100;
		}
		
		
	}
}