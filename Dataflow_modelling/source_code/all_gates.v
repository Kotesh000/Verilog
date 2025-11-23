`timescale 1ns / 1ps
module all_gates(input [1:0]a, output [6:0]b);
assign b[0] = ~a[1];
assign b[1] = a[1]&a[0];
assign b[2] = a[1]|a[0];
assign b[3] = ~(a[1]&a[0]);
assign b[4] = ~(a[1]|a[0]);
assign b[5] = a[1]^a[0];
assign b[6] = a[1]~^a[0];
endmodule
