`timescale 1ns / 1ps
module moore_serial_input(input wire in,clk,rst, output reg q);
parameter a=0, b=1, c=2, d=3, e=4;
reg [2:0]ps,ns;
always@(posedge clk)begin
if(rst)
ps<=a;
else
ps<=ns;
end

always@(ps,in)begin
case(ps)
a: if(in) ns<=d; 
else ns<=b;
b: if(in) ns<=d;
else ns<=c;
c: if(in) ns<=d;
else ns<=ps;
d: if(in) ns<=e;
else ns<=b;
e: if(in) ns<=ps;
else ns<=b;
endcase
end

always@(*)begin 
case(ps)
a: q=0;
b: q=0;
c: q=1;
d: q=0;
e: q=1;
endcase
end
endmodule
