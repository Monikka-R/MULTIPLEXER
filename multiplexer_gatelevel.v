module mux(input i0,i1,i2,i3,s1,s0,output y);
  wire w1,w2,y0,y1,y2,y3;
  not (w1,s1);
  not (w2,s0);
  and (y0,i0,w1,w2);
  and (y1,i1,w1,s0);
  and (y2,i2,s1,w2);
  and (y3,i3,s1,s0);
  or (y,y0,y1,y2,y3);
endmodule
