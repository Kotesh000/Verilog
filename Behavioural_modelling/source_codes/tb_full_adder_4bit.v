`timescale 1ns / 1ps
module tb_full_adder_4bit;
reg [3:0] a,b; 
reg m; 
wire [3:0]s;
wire cout;
fulladder_4_bit g1(.a(a), .b(b), .m(m), .s(s), .cout(cout));
initial begin
m=0;
a=4'b0000; b=4'b0001;#5
a=4'b0001; b=4'b0001;#5
a=4'b0010; b=4'b0010;#5
a=4'b0100; b=4'b0100;#5
a=4'b1000; b=4'b1000;#5
m=1;
a=4'b0000; b=4'b0001;#5
a=4'b0001; b=4'b0001;#5
a=4'b0010; b=4'b0010;#5
a=4'b0100; b=4'b0100;#5
a=4'b1000; b=4'b1000;#5
$stop;
end
endmodule
