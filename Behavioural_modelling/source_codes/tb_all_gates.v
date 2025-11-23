`timescale 1ns / 1ps
module tb_all_gates;
reg [1:0]a;
wire [6:0]b;
all_gates g1(.a(a), .b(b));
initial begin
a=2'b00;#5
a=2'b01;#5
a=2'b10;#5
a=2'b11;#5
$stop;
end
endmodule
