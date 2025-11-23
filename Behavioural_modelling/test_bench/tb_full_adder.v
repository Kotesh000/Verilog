`timescale 1ns / 1ps
module tb_full_adder();
reg a,b,c;
wire s,cin;
full_adder g1(a,b,c,s,cin);
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
