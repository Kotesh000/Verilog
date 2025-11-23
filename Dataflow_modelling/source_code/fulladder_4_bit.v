`timescale 1ns / 1ps
module fulladder_4_bit(input [3:0]a,b, input m, output [3:0]s, output cout);
wire w1,w2,w3,w4,w5,w6,w7;
assign w1 = m^b[0];
assign w2 = m^b[1];
assign w3 = m^b[2];
assign w4 = m^b[3];
full_adder g1(.a(a[0]), .b(w1), .cin(m), .s(s[0]), .c(w5));
full_adder g2(.a(a[1]), .b(w2), .cin(w5), .s(s[1]), .c(w6));
full_adder g3(.a(a[2]), .b(w3), .cin(w6), .s(s[2]), .c(w7));
full_adder g4(.a(a[3]), .b(w4), .cin(w7), .s(s[3]), .c(cout));
endmodule
