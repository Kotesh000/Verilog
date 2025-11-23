`timescale 1ns / 1ps
module tb_ring_counter();
reg clk,rst;
wire [3:0]q;
ring_counter g1(.clk(clk),.rst(rst),.q(q));
initial 
clk=1'b0;
always #5clk=~clk;
initial begin
rst=1;#10
rst=0;
end
endmodule
