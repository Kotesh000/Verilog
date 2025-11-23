`timescale 1ns / 1ps
module moore_fsm_with_sequence(input clk,rst,in, output reg q);
reg [1:0]ps,ns;
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
d: begin q<=1; if(in) begin ns<=b; end
else begin ns<=c; end end

endcase
endmodule
