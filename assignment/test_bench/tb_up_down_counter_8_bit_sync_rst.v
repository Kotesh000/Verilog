`timescale 1ns / 1ps
module tb_up_down_counter_8_bit_sync_rst();
reg clk,rst,en,up_down;
wire [7:0]q;
up_down_counter_low_enable_sync_rst_8_bit g1(.clk(clk),.up_down(up_down),.rst(rst),.en(en),.q(q));
initial
clk=1'b0;
always #5clk=~clk;
initial begin
rst=1;en=1;
up_down=1;
#20rst=0;en=0;
up_down=1;#100
up_down=0;#100
en=1;#50
rst=1;#10
rst=0;
en=0;
up_down=1;#100
$stop;
end
endmodule
