`timescale 1ns / 1ps
module universal_shift_register_8_bit(input clk,rst, input [1:0]sel, 
input [7:0]d, output reg [7:0]q);
always@(posedge clk, posedge rst)begin
if(rst)
q<=8'b00000000;
else begin
case(sel)
2'b00:q<=q;
2'b01:q<={1'b0,q[7:1]};
2'b10:q<={q[6:0],1'b0};
2'b11:q<=d;
default:q<=q;
endcase
end
end
endmodule
