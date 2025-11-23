`timescale 1ns / 1ps
module tb_ram_512();
reg clk,r,w;
reg [7:0]din;
reg [8:0]addr;
wire [7:0]dout;
ram_512_active_low g1(clk,r,w,din,addr,dout);
initial clk=1'b1;
always #5clk=~clk;
initial begin
w=0; r=0; din=8'b10101111; addr=9'b101110101;#10
w=1;r=1;din=8'b0; addr=9'b101110101;#10
w=1;r=1;din=8'b10101011;addr=9'b101000101;#10
w=1;r=1;din=8'b10101111;addr=9'b101110101;#10
$stop;
end
endmodule
