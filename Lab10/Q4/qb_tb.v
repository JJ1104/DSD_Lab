`timescale 1ns/1ns
`include "qb.v" 
module qb_tb();
reg [4:0] i;
reg clock, resetn; 
wire [4:0] o;
reg5 r1(i,o,clock, resetn);
initial
begin
	$dumpfile("qb_tb.vcd");
	$dumpvars(0, qb_tb);
	clock=0;
	forever #20 clock = ~clock;
end
initial begin
	i=5'b11000; resetn=0;
	#20;
	i=5'b10100; resetn=1;
	#20;
	i=5'b11010; resetn=0;
	#20;
	i=5'b11001; resetn=0;
	#20;
	i=5'b01010; resetn=1;
	#20;
	$display("Test complete");
end
endmodule
