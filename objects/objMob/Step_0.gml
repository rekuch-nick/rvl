if(instance_number(objScreen) > 0){ return; }




if(x < xSpot * 32){ x += 4; shifting = true; }
if(x > xSpot * 32){ x -= 4; shifting = true; }
if(y < ySpot * 32){ y += 4; shifting = true; }
if(y > ySpot * 32){ y -= 4; shifting = true; }









if(hp < 1){
	
	ww.mmap[xSpot, ySpot] = noone;
	instance_destroy();
	
}