`timescale 1ns/1ns
`include "mul.v"

module mul_tb();

reg [1:0] x,y;
wire [3:0] p;


mul2bit m1(x,y,p);

initial
begin
$dumpfile("mul_tb.vcd");
$dumpvars(0, mul_tb);
	x = 2'b10; y =2'b11; #20;

	//x =4'b1111;y=4'b0111; #20;
	
$display("Test complete");
end
endmodule
