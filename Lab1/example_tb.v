`timescale 1ns/1ns
`include "example.v"

module example_tb();
reg x1,x2,x3;
wire f;

example ex2(x1,x2,x3,f);
initial
begin
	$dumpfile("example_tb.vcd");
	$dumpvars(0,example_tb);
	
	x1 = 1'b0; x2 = 1'b0; x3 = 1'b0;
	#20;
	
	x1 = 1'b0; x2 = 1'b0; x3 = 1'b1;
	#20;
	
	x1 = 1'b0; x2 = 1'b1; x3 = 1'b0;
	#20;
	
	x1 = 1'b0; x2 = 1'b1; x3 = 1'b1;
	#20;
	
	x1 = 1'b1; x2 = 1'b0; x3 = 1'b0;
	#20;
	
	x1 = 1'b1; x2 = 1'b0; x3 = 1'b1;
	#20;
	
	x1 = 1'b1; x2 = 1'b1; x3 = 1'b0;
	#20;
	
	x1 = 1'b1; x2 = 1'b1; x3 = 1'b1;
	#20;
	

	$display("Test complete");
end 

endmodule
