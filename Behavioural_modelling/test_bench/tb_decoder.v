`timescale 1ns / 1ps
module tb_decoder();
reg [2:0]a; reg e;
wire [7:0]y;
decoder g1(.y(y),.a(a),.e(e));
initial begin
e=0;
e=1; a=3'b000;#5
a=3'b001;#5
a=3'b010;#5
a=3'b011;#5
a=3'b100;#5
a=3'b101;#5
a=3'b110;#5
a=3'b111;#5
$stop;
end
endmodule
