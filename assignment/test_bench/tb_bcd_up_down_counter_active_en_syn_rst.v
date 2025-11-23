`timescale 1ns / 1ps
module tb_bcd_up_down_counter_active_en_syn_rst();
reg clk,a,rst,en;
wire [3:0]q;
bcd_up_down_counter_active_en_rst g1(.clk(clk), .a(a), .en(en), .rst(rst), .q(q));
initial 
clk=1'b1;
always #5clk=~clk;
initial begin
rst=1;#10
rst=0; end
initial
en=1;
initial begin 
a=1;#100
a=0;#100
$stop;
end
endmodule
