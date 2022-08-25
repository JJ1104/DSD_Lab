module q1b1(a,b,c,d,f);
	input a,b,c,d;
	output f;
	assign x1 = (~((a & b) | c)) & d;
	assign x2 = ((a & b) | c) | d;
	assign f = x1 & x2;
endmodule
