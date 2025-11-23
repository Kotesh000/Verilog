`timescale 1ns / 1ps
module tb_mux_using_2x1;
reg [1:0]a; 
reg s; 
wire y;
mux_using_2x1 g1(.y(y),.s(s),.a(a));
initial begin
s=0;
a=2'b00;#5
a=2'b01;#5
s=1;
a=2'b10;#5
a=2'b11;#5
$stop;
end
endmodule
