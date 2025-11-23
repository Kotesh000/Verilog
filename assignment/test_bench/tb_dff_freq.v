module tb_dff_freq();
reg clk,rst;
wire clkout;
dff_freq g1(.clk(clk),.rst(rst),.clkout(clkout));
initial 
clk=1'b1;
always #2.5 clk=~clk;
initial begin
rst=1;#5
rst=0;#5
rst=0;#5
$stop;
end
endmodule