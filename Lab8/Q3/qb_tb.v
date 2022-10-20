`timescale 1ns/1ns
`include "qb.v"

module qb_tb();
reg [3:0] a;
reg En;
wire [15:0] f;

fourtosixteen f1(a,En,f);
initial
begin
	$dumpfile("qb_tb.vcd");
	$dumpvars(0,qb_tb);
	
	En=1'b1;
	a=4'd0; #20;
	a=4'd1; #20;
	a=4'd2; #20;
	a=4'd3; #20;
	a=4'd4; #20;
	a=4'd5; #20;
	a=4'd6; #20;
	a=4'd7; #20;
	a=4'd8; #20;
	a=4'd9; #20;
	a=4'd10; #20;
	a=4'd11; #20;
	a=4'd12; #20;
	a=4'd13; #20;
	a=4'd14; #20;
	a=4'd15; #20;
	
	$display("Test Complete");
end 
endmodule

