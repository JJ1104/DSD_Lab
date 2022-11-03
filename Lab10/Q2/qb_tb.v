`timescale 1ns/1ns
`include "qb.v" 
module qb_tb();
reg t, clock, resetn; 
wire q;
TFF t1(t, clock, resetn, q);
initial
begin
	$dumpfile("qb_tb.vcd");
	$dumpvars(0, qb_tb);
	clock=0;
	forever #20 clock = ~clock;
end
initial begin
	t=0; resetn=0;
	#20;
	t=0; resetn=1;
	#20;
	t=1; resetn=0;
	#20;
	t=1; resetn=0;
	#20;
	t=1; resetn=1;
	#20;
	$display("Test complete");
end
endmodule
