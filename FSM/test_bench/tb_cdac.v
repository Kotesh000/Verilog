`timescale 1ns / 1ps
module tb_cdac();
reg clk, rst;
reg [7:0] in;
wire q;
cdac g1(.clk(clk), .rst(rst), .in(in), .q(q));
initial clk = 1'b1;
always #5 clk = ~clk;
initial begin
rst=1; in=0;#10
rst=0; 
in=68;#10
in=65;#10
in=67;#10
in=67;#10
in=68;#10
in=65;#10
in=67;#10
in=69;#10
in=68;#10
in=65;#10
in=67;#10
$stop;
end
endmodule
