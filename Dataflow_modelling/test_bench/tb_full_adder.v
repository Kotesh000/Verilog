`timescale 1ns / 1ps
module tb_full_adder;
reg a,b,cin;
wire s,c;
full_adder g1(.a(a), .b(b), .cin(cin), .s(s), .c(c));
initial begin
a=0;b=0;cin=0;#5
a=0;b=0;cin=1;#5
a=0;b=1;cin=0;#5
a=0;b=1;cin=1;#5
a=1;b=0;cin=0;#5
a=1;b=0;cin=1;#5
a=1;b=1;cin=0;#5
a=1;b=1;cin=1;#5
$stop;
end
endmodule
