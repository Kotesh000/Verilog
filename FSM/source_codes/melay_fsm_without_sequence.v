`timescale 1ns / 1ps
module moore_fsm_without_sequence(input in,clk,rst,output reg q);
reg [1:0]ns,ps;
parameter a=2'b00,b=2'b01,c=2'b10,d=2'b11;
always@(posedge clk) begin
if(rst)
ps<=a;
else
ps<=ns;
end

always@(in,ps)
case(ps)
a: begin q<=0; if(in) begin ns<=b;end
else begin ns<=ps; end end
b: begin q<=0; if(in) begin ns<=ps; end
else begin ns<=c; end end
c: begin q<=0; if(in) begin ns<=d; end
else begin ns<=a; end end
d: begin q<=1; if(in) begin ns<=a; end
else begin ns<=a; end end
endcase
endmodule
