`timescale 1ns/1ns
`include "qb.v"

module qb_tb();
reg [3:0] b;
wire [3:0] e;

main m1(b,e);
initial
begin
	$dumpfile("qb_tb.vcd");
	$dumpvars(0,qb_tb);
	
	b=4'b0110; #20;
	b=4'b0010; #20;
	b=4'b0101; #20;
	
	$display("Test Complete");
end 
endmodule

