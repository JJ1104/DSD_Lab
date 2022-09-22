`timescale 1ns/1ns
`include "qb.v"
 
module qb_tb();
reg [3:0] in;
wire [3:0] bcd;

qbcd b1(in,bcd);
initial
begin
$dumpfile("qb_tb.vcd");
$dumpvars(0,qb_tb);
 
in=4'b0111;#20;
in=4'b0110;#20;
 
$display("Test Complete ");
end
endmodule
