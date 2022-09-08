module qb(A,B,C,D,f);
	input A,B,C,D;
	output f;
	assign g = ~(~(~(B&B)&A) & ~(~(D&D)&C));
	assign f = ~(g&g);
endmodule
