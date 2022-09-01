module qb(A,B,C,D,f);
	input A,B,C,D;
	output f;
	assign f = (C|~A|~B) & (~D|~A|B) & (~C|A|~B) & (B|~C|D);
endmodule
