`timescale 1ns / 1ps
module tb_half_adder;
reg a,b;
wire s,c;
half_adder g1(.a(a), .b(b), .sum(s), .carry(c));
initial begin
a=0;b=0;#5
a=0;b=1;#5
a=1;b=0;#5
a=1;b=1;#5
$stop;
end
endmodule
