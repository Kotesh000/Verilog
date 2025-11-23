`timescale 1ns / 1ps
module tb_priority_encoder();
reg [3:0]a;
reg e;
wire [1:0]y;
priority_encoder g1(.y(y), .a(a), .e(e));
initial begin
a=4'b0001;e=1;#5
a=4'b0010;#5
a=4'b0100;#5
a=4'b1000;#5
$stop;
end
endmodule