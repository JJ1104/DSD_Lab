`timescale 1ns/1ns
`include "qb.v"

module qb_tb();
reg [3:0] a;
wire f;

main m1(a,f);
initial
begin
	$dumpfile("qb_tb.vcd");
	$dumpvars(0,qb_tb);
	
	a=4'b1110; #20;
	a=4'b1010; #20;
	a=4'b0010; #20;
	
	$display("Test Complete");
end 
endmodule

