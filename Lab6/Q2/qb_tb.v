`timescale 1ns/1ns
`include "qb.v"

module qb_tb();
reg [15:0] a;
reg [3:0] s;
wire f;

sixtoone s1(a,s,f);
initial
begin
	$dumpfile("qb_tb.vcd");
	$dumpvars(0,qb_tb);
	
	a = 16'b1010101010101010;
	s = 4'b0000; #20;
	s = 4'b0001; #20;
	s = 4'b0010; #20;
	s = 4'b0011; #20;
	s = 4'b0100; #20;
	s = 4'b0101; #20;
	s = 4'b0110; #20;
	s = 4'b0111; #20;
	s = 4'b1000; #20;
	s = 4'b1001; #20;
	s = 4'b1010; #20;
	s = 4'b1011; #20;
	s = 4'b1100; #20;
	s = 4'b1101; #20;
	s = 4'b1110; #20;
	s = 4'b1111; #20;
	
	$display("Test Complete");
end 
endmodule
