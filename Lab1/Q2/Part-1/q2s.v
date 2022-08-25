module q2s(a,b,c,d,f,g);
	input a,b,c,d;
	output f,g;
	nand(x1,a,b);
	xor(f,x1,d,c);
	nor(g,b,c,d);
endmodule
