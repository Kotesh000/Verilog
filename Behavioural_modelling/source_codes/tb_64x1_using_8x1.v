`timescale 1ns / 1ps
module tb_64x1_using_8x1();
reg [63:0]a;
reg [5:0]s;
wire y;
mux_64x1_using_8x1 g1(.a(a), .s(s), .y(y));
initial begin
a=64'b0; a[0]=1'b1; s=6'b000000;#5
a=64'b0; a[1]=1'b1; s=6'b000001;#5
a=64'b0; a[2]=1'b1; s=6'b000010;#5
a=64'b0; a[5]=1'b1; s=6'b000101;#5
a=64'b0; a[10]=1'b1; s=6'b001010;#5
a=64'b0; a[32]=1'b1; s=6'b100000;#5
a=64'b0; a[60]=1'b1; s=6'b111100;#5
a=64'b0; a[61]=1'b1; s=6'b111101;#5
a=64'b0; a[62]=1'b1; s=6'b111110;#5
a=64'b0; a[63]=1'b1; s=6'b111111;#5
$stop;
end
endmodule
