`timescale 1ns / 1ps
module tb_demux_4to1;
reg a;
reg [1:0]s;
wire [3:0]y;
demux_1to4 g1(.a(a), .s(s), .y(y));
initial begin
s=2'b00; a=1;#5
s=2'b01; a=1;#5
s=2'b10; a=1;#5
s=2'b11; a=1;#5
$stop;
end
endmodule
