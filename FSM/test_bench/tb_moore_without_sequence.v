`timescale 1ns / 1ps
module tb_moore_without_sequence();
reg clk,rst,in;
wire q;
moore_fsm_without_sequence g1(.clk(clk), .in(in),.rst(rst),.q(q));
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
