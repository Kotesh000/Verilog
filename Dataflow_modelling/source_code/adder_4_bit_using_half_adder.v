`timescale 1ns / 1ps
module adder_4_bit_using_half_adder(input [3:0]a, output[3:0]s, output cout);
wire w1,w2,w3;
half_adder g1(.a(a[0]), .b(1'b1), .sum(s[0]), .carry(w1));
half_adder g2(.a(a[1]), .b(w1), .sum(s[1]), .carry(w2));
half_adder g3(.a(a[2]), .b(w2), .sum(s[2]), .carry(w3));
half_adder g4(.a(a[3]), .b(w3), .sum(s[3]), .carry(cout));
endmodule
