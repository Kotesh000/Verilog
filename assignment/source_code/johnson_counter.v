`timescale 1ns / 1ps
module johnson_counter(clk,rst,q);
input clk,rst;
output reg [3:0]q;
always@(posedge clk)begin
if(rst)
q<=4'b0001;
else
q<={~q[3],q[3:1]};
end
endmodule
