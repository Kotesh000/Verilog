`timescale 1ns / 1ps
module tb_full_sub;
reg a,b,bin;
wire d,bout;
full_sub g1(a,b,bin,d,bout);
initial begin
a=0;b=0;bin=0;#5
a=0;b=0;bin=1;#5
a=0;b=1;bin=0;#5
a=0;b=1;bin=1;#5
a=1;b=0;bin=0;#5
a=1;b=0;bin=1;#5
a=1;b=1;bin=0;#5
a=1;b=1;bin=1;#5
$stop;
end
endmodule
