# comm1.m
#
# Testing serial comms from Octave thru the Xbee to arduino
err=0;
page_screen_output(0);        # These two lines make output onscreen
page_output_immediately(1);   # not delayed until script exits

printf("comm1: start\n");

# Tried to disable the DTR toggle, no joy, arduino resets on serial open()
s1 = serial("/dev/ttyUSB0",57600);
set(s1,"dataterminalready","off");

printf("comm1: open ok\n");

pause(3);   # delay in case arduino has reset
printf("comm1: delay done\n");


srl_flush(s1);
printf("comm1: flush done\n");

pause(1);

  err=srl_write(s1,"a");   # "blocking write, only accepts strings"
  dat=srl_read(s1,1 );   # "blocking read, returns uint8 array"
  printf("comm1: sent a got back %3d\n",dat);

  pause(1);

  err=srl_write(s1,"b");   # "blocking write, only accepts strings"
  dat=srl_read(s1,1 );   # "blocking read, returns uint8 array"
  printf("comm1: sent b got back %3d\n",dat);

  pause(1);

  err=srl_write(s1,"c");   # "blocking write, only accepts strings"
  dat=srl_read(s1,1 );   # "blocking read, returns uint8 array"
  printf("comm1: sent c got back %3d\n",dat);

  pause(1);

fclose(s1);
disp("comm1: done.");
