`timescale 1ns/1ns
`include "qb.v"
module qb3_tb();
reg x2,y2,cin2;
wire cout2,sum2;

decomfulladd d1 (x2,y2,cin2,cout2,sum2);
initial
begin
$dumpfile("qb3_tb.vcd");
$dumpvars(0, qb3_tb);

x2 =  1'b0; y2 = 1'b0; cin2 =1'b0; #20;
x2 =  1'b0; y2 = 1'b0; cin2 =1'b1; #20;
x2 =  1'b0; y2 = 1'b1; cin2 =1'b0; #20;
x2 =  1'b0; y2 = 1'b1; cin2 =1'b1; #20;
x2 =  1'b1; y2 = 1'b0; cin2 =1'b0; #20;
x2 =  1'b1; y2 = 1'b0; cin2 =1'b1; #20;
x2 =  1'b1; y2 = 1'b1; cin2 =1'b0; #20;
x2 =  1'b1; y2 = 1'b1; cin2 =1'b1; #20;


$display("Test Completed");
end 
endmodule
