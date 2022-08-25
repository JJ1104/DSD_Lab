module q1s1(a,b,c,d,f);
	input a,b,c,d;
	output f;
	and(x1,a,b);
	or(x2,c,x1);
	not(x3,x2);
	and(x4,x3,d);
	or(x5,x2,d);
	and(f,x4,x5);
endmodule
