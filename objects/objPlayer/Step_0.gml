xMouse = floor(window_mouse_get_x() / 32);
yMouse = floor(window_mouse_get_y() / 32);


if(instance_number(objScreen) > 0){ return; }
if(menuAction != noone){
	actionFromMenu(menuAction);
	menuAction = noone;
	return;
}



wasShifting = shifting;
shifting = false;

if(x < xSpot * 32){ x += 4; shifting = true; }
if(x > xSpot * 32){ x -= 4; shifting = true; }
if(y < ySpot * 32){ y += 4; shifting = true; }
if(y > ySpot * 32){ y -= 4; shifting = true; }


if(wasShifting && !shifting){
	updateSightNow = true;
	timePassesNow = true;
	
}


if(!shifting){ 
	if(!mouse_check_button(mb_left) && !mouse_check_button(mb_right)){ icd = 0; }
	if(icd < 1){
	
		if(mouse_check_button(mb_left)){
		
		
			if(xMouse != xSpot || yMouse != ySpot){
		
				var tar = path(xSpot, ySpot, xMouse, yMouse);
				if(tar != noone){ 
					if(characterCanMoveFromTo(xSpot, ySpot, tar.a, tar.b)){
						xSpot = tar.a;
						ySpot = tar.b;
					} else if(ww.mmap[tar.a, tar.b]){
						if(mouse_check_button_pressed(mb_left)){
							meleeAttack(id, ww.mmap[tar.a, tar.b]);
							icd = 4;
						}
					
					
				
					} else if(tileCanBeDug(tar.a, tar.b)){
						var d = digPow;
						while(d > 0){
							var roll = irandom_range(0, 99);
							if(d > roll){
								d -= 100;
								tileDamage(tar.a, tar.b);
								shiftTowards(tar.a, tar.b);
							}
						}
					}
				}
			}
		
		
		
		
		} else if (mouse_check_button_pressed(mb_right)){
			//if(xMouse == xSpot && yMouse == ySpot){
				createMenu("explore");
			
			
			//}
		} else if (keyboard_check_pressed(vk_space)){
			timePassesNow = true;
		}
		
	}
	
	
}



if(keyboard_check_pressed(vk_pagedown)){
	loadFloor(zSpot + 1);
}

if(keyboard_check_pressed(vk_pageup)){
	loadFloor(zSpot - 1);
}

if(keyboard_check_pressed(vk_backspace)){
	seeAll = !seeAll;
	
}



if(updateSightNow){
	updateSightNow = false;
	updateSight();
}

if(timePassesNow){
	timePassesNow = false;
	timePasses();
}