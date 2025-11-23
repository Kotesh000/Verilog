`timescale 1ns / 1ps
module tff_up_counter_asyn(t,clk,rst,q);
input t,clk,rst;
output reg [3:0]q;
always@(posedge clk, posedge rst) begin
if(rst)
q<=0;
else if(t)
q<=q+1;
else
q<=q;
end
endmodule
