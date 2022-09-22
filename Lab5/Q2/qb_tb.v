`timescale 1ns/1ns
`include "qb.v"
 
module qb_tb();
parameter n =4;
reg [n-1:0] g;
wire [n-1:0] b;

 
grtobi gb1(g,b);
initial
begin
$dumpfile("qb_tb.vcd");
$dumpvars(0,qb_tb);
 
g=4'b0011;#20;
g=4'b0010;#20;
 
$display("Test Complete ");
end
endmodule
