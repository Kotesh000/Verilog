`timescale 1ns / 1ps
module double_sequence(input in,clk,rst, output reg q);
parameter a=6'b000001, b=6'b000010, c=6'b000100, d=6'b001000, e=6'b010000, f=6'b100000;
reg [5:0]ps,ns;
always@(posedge clk)begin
if(rst)
ps<=a;
else
ps<=ns;
end

always@(ps,in)begin
case(ps)
a: if(in) ns<=b;
else ns<=ps;
b: if(in) ns<=c;
else ns<=a;
c: if(in) ns<=ps;
else ns<=d;
d: if(in) ns<=f;
else ns<=e;
e: if(in) ns<=b;
else ns<=a;
f: if(in) ns<=c;
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
f: q=1;
endcase
end
endmodule
