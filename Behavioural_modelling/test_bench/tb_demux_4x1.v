`timescale 1ns / 1ps
module tb_demux_1x4();
reg a;
reg [1:0]s;
wire [3:0]y;
demux_1x4 g1(.a(a), .s(s), .y(y));
initial begin
a=1; s=2'b00;#5
a=1; s=2'b01;#5
a=1; s=2'b10;#5
a=1; s=2'b11;#5
$stop;
end
endmodule
