function drawMessageQueue(){
	
	var ys = 0;
	if(pc.ySpot < 7){ ys = 20; }
	
	for(var i=0; i<5; i++){
		if(ds_list_size(messageQueue) > i){
			
			var msg = ds_list_find_value(messageQueue, i);
			drawTextColor(32*8, ys*32 + 8, msg.txt, msg.c);
			
			ys++;
		}
	}
	
	
	if(ds_list_size(messageQueue) > 0){
		var n = 1;
		if(ds_list_size(messageQueue) > 4){ n = 2; }
		if(ds_list_size(messageQueue) > 9){ n = 8; }
		if(ds_list_size(messageQueue) > 14){ n = 16; }
		
		ds_list_find_value(messageQueue, 0).cd -= n;
		if(ds_list_find_value(messageQueue, 0).cd < 1){
			ds_list_delete(messageQueue, 0);
		}
	}
}