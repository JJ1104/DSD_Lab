module qb(A,B,C,D,f);
	input A,B,C,D;
	output f;
	assign g = ~(~(A|C|~D) | ~(B|C) | ~(B|D));
	assign f = ~(g|g);
endmodule
