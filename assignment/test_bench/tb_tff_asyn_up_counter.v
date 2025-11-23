`timescale 1ns / 1ps
module tb_tff_asyn_up_counter();
reg t,clk,rst;
wire [3:0]q;
tff_up_counter_asyn g1(.clk(clk), .rst(rst), .t(t), .q(q));
initial
clk=1'b1;
always #5clk=~clk;
initial begin
rst=1;#10
rst=0;
end
initial begin
t=1;#5
t=1;#10
t=0;#15
t=1;#20
t=1;#25
t=0;#30
$stop;
end
endmodule
