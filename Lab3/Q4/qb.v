module qb(A,B,C,D,f);
	input A,B,C,D;
	output f;
	assign f = ~(~(~(A|A) | ~(C|C)) | ~(B|B));
endmodule
