`timescale 1ns/1ns
`include "qb.v" 
module qb_tb();
reg d, clock, resetn; 
wire q;
DFF d1(d, clock, resetn, q);
initial
begin
	$dumpfile("qb_tb.vcd");
	$dumpvars(0, qb_tb);
	clock=0;
	forever #20 clock = ~clock;
end
initial begin
	d=0; resetn=0;
	#20;
	d=0; resetn=1;
	#20;
	d=1; resetn=0;
	#20;
	d=1; resetn=0;
	#20;
	d=1; resetn=1;
	#20;
	$display("Test complete");
end
endmodule
