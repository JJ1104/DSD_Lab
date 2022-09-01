`timescale 1ns/1ns
`include "qb.v"

module qb_tb();
reg A,B,C,D;
wire f;

qb qb(A,B,C,D,f);
initial
begin
	$dumpfile("qb_tb.vcd");
	$dumpvars(0,qb_tb);
	
	A = 1'b0; B =1'b0; C =1'b0; D =1'b0;
	#20;
	
	A = 1'b0; B =1'b0; C =1'b0; D =1'b1;
	#20;
	
	A = 1'b0; B =1'b0; C =1'b1; D =1'b0;
	#20;
	
	A = 1'b0; B =1'b0; C =1'b1; D =1'b1;
	#20;
	
	A = 1'b0; B =1'b1; C =1'b0; D =1'b0;
	#20;
	
	A = 1'b0; B =1'b1; C =1'b0; D =1'b1;
	#20;
	
	A = 1'b0; B =1'b1; C =1'b1; D =1'b0;
	#20;
	
	A = 1'b0; B =1'b1; C =1'b1; D =1'b1;
	#20;
	
	A = 1'b1; B =1'b0; C =1'b0; D =1'b0;
	#20;
	
	A = 1'b1; B =1'b0; C =1'b0; D =1'b1;
	#20;
	
	A = 1'b1; B =1'b0; C =1'b1; D =1'b0;
	#20;
	
	A = 1'b1; B =1'b0; C =1'b1; D =1'b1;
	#20;
	
	A = 1'b1; B =1'b1; C =1'b0; D =1'b0;
	#20;
	
	A = 1'b1; B =1'b1; C =1'b0; D =1'b1;
	#20;
	
	A = 1'b1; B =1'b1; C =1'b1; D =1'b0;
	#20;
	
	A = 1'b1; B =1'b1; C =1'b1; D =1'b1;
	#20;
	
	$display("Test Complete");
end

endmodule
