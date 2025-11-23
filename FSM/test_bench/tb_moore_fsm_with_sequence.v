`timescale 1ns / 1ps
module tb_moore_fsm_with_sequence();
reg in,clk,rst;
wire q;
moore_fsm_with_sequence g1(clk,rst,in,q);
initial 
clk=1'b1;
always #5clk=~clk;
initial begin
rst=1; in=1;#10
rst=0; in=0;#10
in=1;#10
in=0;#10
in=1;#10
in=1;#10
in=0;#10
in=1;#10
in=1;#10
in=0;#10
in=1;#10
$stop;
end
endmodule
