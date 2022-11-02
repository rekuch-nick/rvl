function canSeeCreature(c1, c2){
	
	var dis = abs(c1.xSpot - c2.xSpot) + abs(c1.ySpot - c2.ySpot);
	
	if(dis > sightRange){
		return false;
	}
	
	if(lineIsBlocked(getLine(c1.xSpot, c1.ySpot, c2.xSpot, c2.ySpot))){
		return false;
	}
	
	return true;
}