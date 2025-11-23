`timescale 1ns / 1ps
module mux_64x1_using_8x1(y,a,s);
output y;
input [63:0]a;
input [5:0]s;
wire [7:0]w;
mux_8x1_using_2x1 g1(w[0], a[7:0], s[2:0]);
mux_8x1_using_2x1 g2(w[1], a[15:8], s[2:0]);
mux_8x1_using_2x1 g3(w[2], a[23:16], s[2:0]);
mux_8x1_using_2x1 g4(w[3], a[31:24], s[2:0]);
mux_8x1_using_2x1 g5(w[4], a[39:32], s[2:0]);
mux_8x1_using_2x1 g6(w[5], a[47:40], s[2:0]);
mux_8x1_using_2x1 g7(w[6], a[55:48], s[2:0]);
mux_8x1_using_2x1 g8(w[7], a[63:56], s[2:0]);
mux_8x1_using_2x1 g9(y, w[7:0], s[5:3]);
endmodule