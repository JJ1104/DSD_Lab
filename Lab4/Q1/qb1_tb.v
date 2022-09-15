`timescale 1ns/1ns
`include "qb.v"
module qb1_tb();
reg x0,y0;
wire cout0,sum0;
halfadder h1 (x0,y0,cout0,sum0);

initial
begin
$dumpfile("qb1_tb.vcd");
$dumpvars(0, qb1_tb);

x0=1'b0; y0=1'b0; #20;
x0=1'b0; y0=1'b1; #20;
x0=1'b1; y0=1'b0; #20;
x0=1'b1; y0=1'b1; #20;

$display("Test Completed");
end 
endmodule

