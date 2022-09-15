`timescale 1ns/1ns
`include "qb.v"

module adder4_tb();

reg carryin;
reg [3:0] x,y;
wire [3:0] s;
wire carryout;


adder4 a1(carryin, x,y,s, carryout);

initial
begin
$dumpfile("adder4_tb.vcd");
$dumpvars(0, adder4_tb);
	carryin=1'b0; x = 4'b1010; y =4'b0010; #20;

	carryin=1'b1; x =4'b1111;y=4'b0111; #20;
	
$display("Test complete");
end
endmodule
