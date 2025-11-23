`timescale 1ns / 1ps
module tb_mux8_1();
reg [7:0]a;
reg [2:0]s;
wire y;
mux8_1 m1(y,a,s);
initial begin
  s=3'b000; a=8'b00000001; #5
  s=3'b001; a=8'b00000010; #5
  s=3'b010; a=8'b00000100; #5
  s=3'b011; a=8'b00001000; #5
  s=3'b100; a=8'b00010000; #5
  s=3'b111; a=8'b10000000; #5
  $stop;
end
endmodule