# bopen
function s=bopen (N)

if(N==0)
s=serial("/dev/ttyUSB0",57600);
endif;

if(N==1)
s=serial("/dev/ttyUSB1",57600);
endif;



