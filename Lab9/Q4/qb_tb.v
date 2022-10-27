`timescale 1ns/1ns
`include "qb.v"

module qb_tb();
reg [7:0] a;
reg [2:0] s;
wire f;
mux8to1 m1(a,s,f);
initial
begin
	$dumpfile("qb_tb.vcd");
	$dumpvars(0,qb_tb);
	
	a=8'd1; 
	s=3'd0; #20;
	s=3'd1; #20;
	s=3'd2; #20;
	s=3'd3; #20;
	s=3'd4; #20;
	s=3'd5; #20;
	s=3'd6; #20;
	s=3'd7; #20;
	
	
	$display("Test Complete");
end 
endmodule

