module mul2bit(x,y,p);
	input [1:0]x,y;
	output [3:0] p;
	wire [1:0] a,b;
	wire c2;
	and(p[0],x[0],y[0]);
	and(b[0],x[1],y[0]);
	and(a[0],x[0],y[1]);
	and(a[1],x[1],y[1]);
	assign b[1] = 1'b0;
	adder2 stage0(a,b,1'b0,p[2:1],p[3]);	
endmodule

module adder2(x,y,cin,s,cout);
	input [1:0] x,y;
	input cin;
	output [1:0] s;
	output cout;
	wire c1;
	fulladd stage0 (cin, x[0], y[0], s[0], c1);
	fulladd stage1 (c1, x[1], y[1], s[1], cout);
endmodule


module fulladd (Cin, x, y, s, Cout);
	input Cin, x, y;
	output s, Cout;
	assign s = x ^ y ^Cin;
	assign Cout = (x & y) | (x & Cin) | (y & Cin);
endmodule
