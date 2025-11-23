`timescale 1ns / 1ps
module tb_mux_4to1;
reg [3:0]a;
reg [1:0]s;
wire y;
mux_4to1 g1(.a(a), .s(s), .y(y));
initial begin
s=2'b00; a=4'b0001;#5
s=2'b01; a=4'b0010;#5
s=2'b10; a=4'b0100;#5
s=2'b11; a=4'b1000;#5
$stop;
end
endmodule
