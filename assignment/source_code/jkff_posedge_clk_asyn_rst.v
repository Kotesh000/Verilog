`timescale 1ns / 1ps
module jkff_posedge_clk_asyn_rst(input j,k, clk, rst, output reg q);
always@(posedge clk, posedge rst)begin
if(rst)
q<=1'b0;
else begin
case({j,k})
2'b00:q<=q;
2'b01:q<=1'b0;
2'b10:q<=1'b1;
2'b11:q=~q;
endcase
end
end
endmodule
