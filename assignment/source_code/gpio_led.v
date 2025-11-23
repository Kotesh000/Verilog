`timescale 1ns / 1ps
module gpio_led(input clk,input rst,output reg led);
reg [26:0]count;
always@(posedge clk)begin
if(rst)begin count<=27'd99999995; led=0;
end
else if(count==27'd99999999)begin
count<=0;led<=~led;end
else count<=count+1;
end
endmodule
