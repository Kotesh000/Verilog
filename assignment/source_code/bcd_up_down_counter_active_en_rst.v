`timescale 1ns / 1ps
module bcd_up_down_counter_active_en_rst(clk,rst,en,a,q);
input clk,rst,en,a;
output reg [3:0]q;
always@(posedge clk)begin
if(rst)
q<=4'b0000;
else if(en)begin
if(a) begin
if(q==4'b1001)
q<=4'b0000;
else
q<=q+1;
end else begin
if(q==4'b0000)
q<=4'b1001;
else
q<=q-1;
end
end
else
q<=q;
end
endmodule
