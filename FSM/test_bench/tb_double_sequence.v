`timescale 1ns / 1ps
module tb_double_sequence();
reg in,clk,rst;
wire q;
double_sequence g1(.clk(clk),.in(in),.rst(rst),.q(q));
initial 
clk=1'b1;
always #5clk=~clk;
initial begin
rst=1; in=0;#10
rst=0;#10
in=1;#10
in=1;#10
in=0;#10
in=1;#10
in=0;#10
in=1;#10
in=1;#10
in=0;#10
in=0;#10
in=1;#10
$stop;
end
endmodule
