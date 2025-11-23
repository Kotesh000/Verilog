`timescale 1ns / 1ps
module tb_adder_4_bit_using_half_adder;
reg [3:0]a;
wire [3:0]s;
wire cout;
adder_4_bit_using_half_adder g1(.a(a), .s(s), .cout(cout));
initial begin
a=4'b0000;#10
a=4'b0001;#10
a=4'b0010;#10
a=4'b0111;#10
a=4'b1000;#10
a=4'b1001;#10
a=4'b1110;#10
a=4'b1111;#10
$stop;
end
endmodule
