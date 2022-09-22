module qbcd(in,bcd);
	input [3:0] in;
	output [3:0] bcd;
	wire [3:0] bcd;
	assign bcd[0] = in[0];
	assign bcd[1] = in[1] ^ in[0];
	assign bcd[2] = ~in[2]&in[0] | in[1]&~in[2] | ~in[1]&~in[0]&in[2];
	assign bcd[3] = in[3]&~in[1]&~in[0] | in[3]&in[2];
endmodule
	
	
