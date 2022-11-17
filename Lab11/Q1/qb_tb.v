`timescale 1ns/1ns
`include "qb.v" 
module qb_tb();
reg clock, set,clear; 
wire [3:0] Q;
ringc r1(clock, clear,set, Q);
initial
begin
	$dumpfile("qb_tb.vcd");
	$dumpvars(0, qb_tb);
	clock=0;
	forever #20 clock = ~clock;
end
initial begin
	clear = 0; 
	set = 1; #40;
	set = 0;
	clear = 1;
	#320;
	$display("Test complete");
	$finish;
	
end
endmodule
