`timescale 1ns / 1ps
module tb_gray_code_melay_fsm();
reg clk,rst;
reg [1:0]in;
wire q;
gray_code_melay_fsm g1(.clk(clk),.rst(rst),.in(in),.q(q));
initial
clk=1'b1;
always #5clk=~clk;
initial begin 
rst=1; in=1;#10
rst=0; in=1;#10
in=3;#10
in=3;#10
in=1;#10
in=1;#10
in=3;#10
in=3;#10
in=1;#10
in=1;#10
$stop;
end
endmodule
