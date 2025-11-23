`timescale 1ns / 1ps
module tb_half_sub;
reg a,b;
wire bin,d;
half_subtractor g1(.a(a), .b(b), .bin(bin), .d(d));
initial begin
a=0;b=0;#5
a=0;b=1;#5
a=1;b=0;#5
a=1;b=1;#5
$stop;
end
endmodule
