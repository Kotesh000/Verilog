`timescale 1ns / 1ps
module jkff_down_counter(j,k,clk,rst,q);
input j,k,clk,rst;
output reg q;
always@(posedge clk, posedge rst) begin
if(rst)
q=1'b0;
else begin
case({j,k})
2'b00: q<=q;
2'b01: q<=1'b0;
2'b10: q<=1'b1;
2'b11: q<=~q;
endcase
end
end
endmodule

module jkff_down_counter_asyn(clk,rst,q);
input clk,rst;
output wire [3:0]q;
wire j;
assign j=1;
jkff_down_counter g1(.clk(clk),.rst(rst),.j(j), .k(j), .q(q[0]));
jkff_down_counter g2(.clk(q[0]),.rst(rst),.j(j),.k(j),.q(q[1]));
jkff_down_counter g3(.clk(q[1]),.rst(rst),.j(j),.k(j),.q(q[2]));
jkff_down_counter g4(.clk(q[2]),.rst(rst),.j(j),.k(j),.q(q[3]));
endmodule
