`timescale 1ns / 1ps
module melay_with_sequence(input in,rst,clk, output reg q);
reg [1:0]ps,ns;
parameter a=2'b00, b=2'b01, c=2'b11;
always@(posedge clk) begin
if(rst)
ps<=a;
else
ps<=ns;
end
always@(in,ps)
case(ps)
a: if(in) begin ns<=b; begin q<=0; end end
else begin ns<=ps; q<=0; end 
b: if(in) begin ns<=ps; begin q<=0; end end
else begin ns<=c; q<=0; end
c: if(in) begin ns<=b; begin q<=1; end end
else begin ns<=a; q<=0; end
endcase
endmodule
