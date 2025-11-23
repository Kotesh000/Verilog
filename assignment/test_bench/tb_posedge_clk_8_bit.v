`timescale 1ns / 1ps
module tb_posdedge_clk_8_bit();
reg [7:0]d;
reg clk;
reg rst;
wire [7:0]q;
posedge_clk_8_bit_register g1(.clk(clk), .rst(rst), .d(d), .q(q));
initial 
clk=1;
always #10 clk=~clk;
initial begin
rst=1;d=8'd0;
#15 rst=0;
#20d=8'd14;
#20d=8'd27;
#20d=8'd99;
$stop;
end
endmodule
