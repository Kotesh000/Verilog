`timescale 1ns / 1ps
module tb_jkff_posedge_clk_asyn_rst();
reg j,k,rst,clk;
wire q;
jkff_posedge_clk_asyn_rst g1(.j(j), .k(k), .clk(clk), .rst(rst), .q(q));
initial begin
clk=1'b1;
end
always #10clk=~clk;
initial begin
rst=1;
j=1;k=1;#10
j=0;k=0;#20
j=1;k=0;#25
j=0;k=1;#30
j=1;k=1;#10
j=0;k=0;#20
rst=0;
j=1;k=1;#10
j=0;k=0;#20
j=1;k=0;#25
j=0;k=1;#30
j=1;k=1;#10
j=0;k=0;#20
$stop;
end
endmodule
