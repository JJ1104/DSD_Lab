`timescale 1ns/1ns
`include "qb.v" 
module qb_tb();
reg en,clock,clear; 
wire [3:0] Q;
sync4ud r1(clock,clear,en,Q);
initial
begin
	$dumpfile("qb_tb.vcd");
	$dumpvars(0, qb_tb);
	clock=0;
	forever #10 clock = ~clock;
end
initial begin
	en = 0;
	clear = 0; #20;
	clear = 1; #300;
	en = 1;
	clear = 0; #20;
	clear = 1; #300;
	$display("Test complete");
	$finish;
	
end
endmodule
