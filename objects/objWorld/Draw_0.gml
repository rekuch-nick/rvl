for(var a=0; a<43; a++){ for(var b=0; b<25; b++){
	
	
	if(!pc.see[a, b] && !pc.seeAll){ 
		
		if(rmap[a, b] != noone){ draw_sprite_stretched(rmap[a, b], 0, a*32, b*32, 32, 32); }
		
		continue; 
	}
	
	if(fmap[a, b] != noone){ draw_sprite_stretched(fmap[a, b], 0, a*32, b*32, 32, 32); }
	
	if(bmap[a, b] != noone
				&& bmap[a, b] != "node"
				){ draw_sprite_stretched(bmap[a, b], 0, a*32, b*32, 32, 32); }
	
}}