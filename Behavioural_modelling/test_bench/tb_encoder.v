`timescale 1ns / 1ps
module tb_encoder();
reg [3:0]a;
wire [1:0]y;
reg e;
encoder g1(.a(a), .e(e), .y(y));
initial begin
a=4'b0001;e=1;#5
a=4'b0010;#5
a=4'b0100;#5
a=4'b1000;#5
$stop;
end
endmodule
