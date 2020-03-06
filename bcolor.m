# bcolor.m
#

function bcolor(s1,R,G,B)

srl_write(s1,uint8(4));   
srl_write(s1,uint8(R));   
srl_write(s1,uint8(G));   
srl_write(s1,uint8(B));   
