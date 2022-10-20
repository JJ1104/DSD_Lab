`timescale 1ns/1ns
`include "qb.v"

module qb_tb();
reg [2:0] a;
reg En;
wire [7:0] f;

threetoeight t1(a,En,f);
initial
begin
	$dumpfile("qb_tb.vcd");
	$dumpvars(0,qb_tb);
	
	En=1'b1;
	a=3'd0; #20;
	a=3'd1; #20;
	a=3'd2; #20;
	a=3'd3; #20;
	a=3'd4; #20;
	a=3'd5; #20;
	a=3'd6; #20;
	a=3'd7; #20;
	
	$display("Test Complete");
end 
endmodule

