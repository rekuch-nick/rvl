



var xm = 0;

if(pc.xSpot < 21){
	xm = room_width;
	draw_set_halign(fa_right);
	drawDir = -1;
}

drawText(0+xm, 0, string(xSpot) + ", " + string(ySpot) + ", " + string(zSpot));

var x2 = (0+xm) + (32*6*drawDir);
draw_rectangle_color(0+xm, 32, x2, 63, c_black, c_black, c_black, c_black, false);
x2 = xm + ((32*6*drawDir) * (hp/hpMax));
draw_rectangle_color(0+xm, 32, x2, 63, c_hpRed1, c_hpRed2, c_hpRed1, c_hpRed2, false);
draw_text(xm, 40, hp);


var x2 = (0+xm) + (32*6*drawDir);
draw_rectangle_color(0+xm, 64, x2, 95, c_black, c_black, c_black, c_black, false);
x2 = xm + ((32*6*drawDir) * (mp/mpMax));
draw_rectangle_color(0+xm, 64, x2, 95, c_hpBlue1, c_hpBlue2, c_hpBlue1, c_hpBlue2, false);
draw_text(xm, 72, mp);



draw_set_halign(fa_left);
drawDir = 1;


drawMessageQueue();