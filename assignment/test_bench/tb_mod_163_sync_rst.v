`timescale 1ns / 1ps
module tb_mod_163_sync_rst();
reg clk,rst;
wire [7:0]q;
wire max_tick;
mod_163_sync_rst_max_tick g1(.clk(clk), .rst(rst), .max_tick(max_tick),.q(q));
initial 
clk=1'b1;
always #1clk=~clk;
initial begin
rst=1;#2
rst=0;
end
endmodule
