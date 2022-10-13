`timescale 1ns/1ns
`include "qb.v"

module qb_tb();
reg [3:0] a;
reg [1:0] s;
wire f;

fourtoone f1(a,s,f);
initial
begin
	$dumpfile("qb_tb.vcd");
	$dumpvars(0,qb_tb);
	
	a = 4'b1010; 
	s = 2'b00; #20;
	s = 2'b01; #20;
	s = 2'b10; #20;
	s = 2'b11; #20;
	
	$display("Test Complete");
end 
endmodule

