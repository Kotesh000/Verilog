`timescale 1ns / 1ps
module d_ff(input d,clk,rst, output reg q);
always@(posedge clk)begin
if(rst)
q<=0;
else
q<=d;
end
endmodule

module dff_freq(input clk,rst, output clkout);
wire d1;
assign d1=~clkout;
d_ff g1(d1,clk,rst,clkout);
endmodule
