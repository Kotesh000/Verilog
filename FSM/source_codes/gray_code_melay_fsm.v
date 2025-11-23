`timescale 1ns / 1ps
module gray_code_melay_fsm(input [1:0]in, input clk,rst, output reg q);
parameter a=2'b00, b=2'b01, c=2'b11, d=2'b10;
reg [1:0]ps,ns;
always@(posedge clk)begin
if(rst)
ps<=a;
else
ps<=ns;
end
always@(ps,in)
case(ps)
a: if(in==2'b01) begin ns<=b; q<=0; end
else begin ns<=ps; q<=0; end
b: if(in==2'b11) begin ns<=c; q<=0; end
else  begin ns<=b; q<=0; end
c: if(in==2'b11) begin ns<=d; q<=0; end
else if (in) begin ns<=b; q<=0; end 
else begin ns<=a; q<=0; end
d: if(in==2'b01) begin  ns<=a; q<=1; end
else begin ns<=a; end
endcase
endmodule
