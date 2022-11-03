`timescale 1ns/1ns
`include "qb.v" 
module qb_tb();
reg i, clock, resetn; 
wire o;
shiftreg6 r1(i,o,clock, resetn);
initial
begin
	$dumpfile("qb_tb.vcd");
	$dumpvars(0, qb_tb);
	clock=0;
	forever #20 clock = ~clock;
end
initial begin
	i=1'b1; resetn=1;
	#40;
	i=1'b0; resetn=1;
	#40;
	i=1'b1; resetn=1;
	#40;
	
	$display("Test complete");
end
endmodule
