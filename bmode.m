# bmode.m
#
#  set mode 
function bmode(s1,mode)

srl_write(s1,uint8(1));       # command 1  sets the mode
srl_write(s1,uint8(mode));    # one argument, the mode number


