`timescale 1ns/1ns
`include "qb.v"

module qb_tb();
reg [15:0] a;
wire [3:0] f;

encoder16to4 f1(a,f);
initial
begin
	$dumpfile("qb_tb.vcd");
	$dumpvars(0,qb_tb);
	
	a=16'd1; #20;
	a=16'd2; #20;
	a=16'd4; #20;
	a=16'd8; #20;
	a=16'd16; #20;
	a=16'd32; #20;
	a=16'd64; #20;
	a=16'd128; #20;
	a=16'd256; #20;
	a=16'd512; #20;
	a=16'd1024; #20;
	a=16'd2048; #20;
	a=16'd4096; #20;
	a=16'd8192; #20;
	a=16'd16384; #20;
	a=16'd32768; #20;
	
	$display("Test Complete");
end 
endmodule

