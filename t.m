# t
#
# this is a test script to call new functions

for r=[0:5:255],
  for g=[0:5:255],
    for b=[0:5:255],
      printf("color %3d %3d %3d\n",r,g,b);
      bcolor(s,r,g,b);
      pause(0.5);
    endfor
  endfor
endfor
pause(3);
err = bmode(s,2);

