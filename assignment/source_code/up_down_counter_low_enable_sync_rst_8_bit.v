`timescale 1ns / 1ps
module up_down_counter_low_enable_sync_rst_8_bit(clk,rst,en,up_down,q);
input clk,en,rst,up_down;
output reg [7:0]q;
always@(posedge clk) begin
if(rst)begin
q<=8'b00000000;
end
else if(!en)begin
if(up_down)
q<=q+1;
else
q<=q-1;
end
end
endmodule
