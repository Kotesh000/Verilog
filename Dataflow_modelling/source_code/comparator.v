`timescale 1ns / 1ps
module comparator(input a,b, output c,d,e);
assign c = (a>b);
assign d = (a==b);
assign e = (a<b);
endmodule
