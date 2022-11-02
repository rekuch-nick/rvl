function meleeAttack(c1, c2){
	
	shiftTowards(c2.xSpot, c2.ySpot);
	
	var dam = 1;
	
	c2.hp -= dam;
	
	var col = c1.object_index == objPlayer ? c_white : pc.c_msgRed;
	var s = c1.nam + " hit " + c2.nam + " for " + string(dam);
	if(c2.hp < 1){
		var s = c1.nam + " slew " + c2.nam;
	}
	
	var msg = { txt: s, c: col, cd: pc.mcd }
	ds_list_add(pc.messageQueue, msg);
}