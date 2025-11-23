`timescale 1ns / 1ps
module mod_163_sync_rst_max_tick(clk,rst,max_tick,q);
input clk,rst;
output reg [7:0]q;
output reg max_tick;
always@(posedge clk)begin
if(rst)begin
q<=8'd0;
max_tick<=1'b0;
end
else begin
if(q==8'b10100010)begin
q<=8'd0;
max_tick<=1'b1;
end else
begin
q<=q+1;
max_tick<=1'b0;
end
end
end
endmodule
