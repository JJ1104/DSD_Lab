module qb(A,B,C,D,f);
	input A,B,C,D;
	output f;
	assign f = (B&~C&~D) | (~A&B) | (C&D) | (C&~B);
endmodule 
