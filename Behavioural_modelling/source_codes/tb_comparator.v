`timescale 1ns / 1ps
module tb_comparator;
reg a,b;
wire c,d,e;
comparator g1(.a(a), .b(b), .c(c), .d(d), .e(e));
initial begin
a=0;b=0;#5
a=0;b=1;#5
a=1;b=0;#5
a=1;b=1;#5
$stop;
end
endmodule
