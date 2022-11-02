xSpot = floor(x/32);
ySpot = floor(y/32);
zSpot = -1;
face = 1;
icd = 0;

shifting = false;

xMouse = 0; yMouse = 0;

digPow = 100;

updateSightNow = true;
sightRange = 16;
timePassesNow = false;

for(var a=0; a<43; a++){ for(var b=0; b<25; b++){
	see[a, b] = false;
}}

seeAll = false;


nam = "You";

hp = 17;
hpMax = 20;

mp = 100;
mpMax = 100;

menuAction = "";


messageQueue = ds_list_create();
mcd = 45;
c_msgRed = #E55B61;

var s1 = { txt: "Welcome to the adventure!", c: c_yellow, cd: 45, }
var s2 = { txt: "Click to move", c: c_white, cd: 45, }
var s3 = { txt: "Right-click to open / close menu", c: c_white, cd: 45, }

ds_list_add(messageQueue, s1);
ds_list_add(messageQueue, s2);
ds_list_add(messageQueue, s3);


c_hpRed1 = #991E23
c_hpRed2 = #4C0F11

c_hpBlue1 = #349DB2
c_hpBlue2 = #1E4266