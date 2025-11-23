`timescale 1ns / 1ps
module half_subtractor(input a,b, output bin,d);
assign bin = a^b;
assign d = ~a&b;
endmodule
