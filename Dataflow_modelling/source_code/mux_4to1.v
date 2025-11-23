`timescale 1ns / 1ps
module mux_4to1(input [3:0]a, input [1:0]s, output  y);
assign y = ~s[1]&~s[0]&a[0]|~s[1]&s[0]&a[1]|s[1]&~s[0]&a[2]|s[1]&s[0]&a[3];
endmodule
