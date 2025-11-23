`timescale 1ns / 1ps
module tb_half_sub();
reg a,b;
wire bin,d;
half_sub g1(a,b,bin,d);
initial begin
a=0;b=0;#5
a=0;b=1;#5
a=1;b=0;#5
a=1;b=1;#5
$stop;
end
endmodule
