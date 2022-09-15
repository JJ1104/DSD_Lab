module adder4 (carryin,x, y, s, carryout);
	input carryin;
	input [3:0] x,y;
	output [3:0] s;
	output carryout;
	wire [3:0] Y;
	wire [3:1] c;
	assign Y[0] = y[0]^carryin;
	assign Y[1] = y[1]^carryin;
	assign Y[2] = y[2]^carryin;
	assign Y[3] = y[3]^carryin;
	
	fulladd stage0 (carryin, x[0], Y[0], s[0], c[1]);
	fulladd stage1 (c[1], x[1], Y[1], s[1], c[2]);
	fulladd stage2 (c[2], x[2], Y[2], s[2], c[3]);
	fulladd stage3 (c[3], x[3], Y[3], s[3], carryout);
endmodule

module fulladd (Cin, x, y, s, Cout);
	input Cin, x, y;
	output s, Cout;
	assign s = x ^ y ^Cin;
	assign Cout = (x & y) | (x & Cin) | (y & Cin);
endmodule
