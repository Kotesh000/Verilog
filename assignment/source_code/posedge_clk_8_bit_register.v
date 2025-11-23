`timescale 1ns / 1ps
module posedge_clk_8_bit_register(input clk, rst, input [7:0]d, output reg [7:0]q);
always @(posedge clk) begin
if(rst)
q<=8'b00000000;
else
q<=d;
end
endmodule