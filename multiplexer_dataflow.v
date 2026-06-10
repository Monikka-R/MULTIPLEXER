module mux(input i0,i1,i2,i3,s1,s0,output y);
  assign y=i0&~s1&~s0|i1&~s1&s0|i2&s1&~s0|i3&s1&s0;
  endmodule
module tb;
  reg i0,i1,i2,i3,s1,s0;
  wire y;
  mux copy(i0,i1,i2,i3,s0,s1,y);
  initial begin
    i0=1;i1=0;i2=0;i3=0;
    s1=0;s0=0;
    #10 s1=0;s0=1;
    #10 s1=1;s0=0;
    #10 s1=1;s0=1;
    #10 $finish();
  end
endmodule
