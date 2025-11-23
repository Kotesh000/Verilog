`timescale 1ns / 1ps
module tb_universal_shift_register_8_bit();
reg clk,rst;
reg [1:0]sel;
reg [7:0]d;
wire [7:0]q;
universal_shift_register_8_bit g1(.clk(clk),.rst(rst),.sel(sel),.d(d),.q(q));
initial
clk=1'b1;
always #5clk=~clk;
initial begin
rst=1; sel=2'b00; d=8'b00000000;
#10 rst=0;
sel=2'b11; d=8'b10101010;
sel=2'b00;#10
sel=2'b01;#10
sel=2'b01;#10
sel=2'b10;#10
sel=2'b10;#10
sel=2'b11;d=8'b11001100;#10
sel=2'b00;#10
$stop;
end
endmodule
