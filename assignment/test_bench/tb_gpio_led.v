`timescale 1ns / 1ps
module tb_gpio_led();
reg clk,rst;
wire led;
gpio_led g1(clk,rst,led);
initial clk=1'b1;
always #5 clk=~clk;
initial begin
rst=1;#10
rst=0;
#300000000 
$stop;
end
endmodule
