`timescale 1ns / 1ps
module ram_512_active_low(input clk, r, w, 
input [7:0]din,
input [8:0]addr,
output reg [7:0]dout);
reg [7:0]mem[0:511];
integer i;
initial begin
for(i=0;i<512;i=i+1)
mem[i]<=8'b0;
dout<=8'b0;
end
always@(posedge clk)begin
if(!w)begin
mem[addr]<=din;
end 
if(r)begin
if(!w)
dout<=din;
else
dout<=mem[addr];
end
end
endmodule
