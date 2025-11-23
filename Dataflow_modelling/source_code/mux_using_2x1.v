`timescale 1ns / 1ps
module mux_using_2x1(y,a,s);
input [1:0]a;
input s;
output y;
assign y = ~s&a[0]|s&a[1];
endmodule



