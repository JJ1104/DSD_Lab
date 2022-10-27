`timescale 1ns/1ns
`include "qb.v"

module qb_tb();
reg [3:0] a;
wire f;
integer i;

func f1(a,f);
initial
begin
	$dumpfile("qb_tb.vcd");
	$dumpvars(0,qb_tb);
	
	for(i=0;i<16;i=i+1)
	begin 
		a=i; #20;
	end
	
	$display("Test Complete");
end 
endmodule

