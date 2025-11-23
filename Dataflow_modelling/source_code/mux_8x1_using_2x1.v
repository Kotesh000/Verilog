`timescale 1ns / 1ps
module mux_8x1_using_2x1(y,a,s);
input [7:0]a;
input [2:0]s;
output y;
wire [5:0]w;
mux_using_2x1 m1(w[0], a[1:0], s[0]);
mux_using_2x1 m2(w[1], a[3:2], s[0]);
mux_using_2x1 m3(w[2], a[5:4], s[0]);
mux_using_2x1 m4(w[3], a[7:6], s[0]);
mux_using_2x1 m5(w[4], w[1:0], s[1]);
mux_using_2x1 m6(w[5], w[3:2], s[1]);
mux_using_2x1 m7(y,w[5:4], s[2]);
endmodule
