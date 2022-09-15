`timescale 1ns/1ns
`include "qb.v"
module qb2_tb();
reg x1,y1,cin1;
wire cout1,sum1;

fulladder f1 (x1,y1,cin1,cout1,sum1);
initial
begin
$dumpfile("qb2_tb.vcd");
$dumpvars(0, qb2_tb);

x1 = 1'b0; y1 = 1'b0; cin1 = 1'b0; #20;
x1 = 1'b0; y1 = 1'b0; cin1 = 1'b1; #20;
x1 = 1'b0; y1 = 1'b1; cin1 = 1'b0; #20;
x1 = 1'b0; y1 = 1'b1; cin1 = 1'b1; #20;
x1 = 1'b1; y1 = 1'b0; cin1 = 1'b0; #20;
x1 = 1'b1; y1 = 1'b0; cin1 = 1'b1; #20;
x1 = 1'b1; y1 = 1'b1; cin1 = 1'b0; #20;
x1 = 1'b1; y1 = 1'b1; cin1 = 1'b1; #20;


$display("Test Completed");
end 
endmodule
