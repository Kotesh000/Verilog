`timescale 1ns / 1ps
module cdac(input [7:0]in, input clk,rst, output reg q);
parameter a=5'b00001, b=5'b00010, c=5'b00100, d=5'b01000, e=5'b10000;
reg [4:0]ps,ns;
always @(posedge clk) begin
if(rst)
ps<=a;
else
ps<=ns;
end
always @(ps,in)begin
case(ps)
a: if(in==67) ns<=b;
else ns<=ps;
b: if(in==68) ns<=c;
else if(in==67) ns<=b;
else ns<=a;
c: if(in==65) ns<=d;
else if(in==67) ns<=b;
else ns<=a;
d: if(in==67) ns<=e;
else ns<=a;
e: if(in==67) ns<=b;
else if(in==68) ns<=c;
else ns<=a;
endcase
end

always@(*)begin
case(ps)
a: q=0;
b: q=0;
c: q=0;
d: q=0;
e: q=1;
endcase
end
endmodule
