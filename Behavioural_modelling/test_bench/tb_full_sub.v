`timescale 1ns / 1ps
module tb_full_sub();
reg a,b,c;
wire bin,d;
full_sub g1(a,b,c,bin,d);
initial begin
a=0;b=0;c=0;#5
a=0;b=0;c=1;#5
a=0;b=1;c=0;#5
a=0;b=1;c=1;#5
a=1;b=0;c=0;#5
a=1;b=0;c=1;#5
a=1;b=1;c=0;#5
a=1;b=1;c=1;#5
$stop;
end
endmodule
