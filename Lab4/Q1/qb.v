module halfadder(x0,y0,cout0,sum0);
	input x0,y0;
	output cout0,sum0;
	assign sum0 = x0 ^ y0;
	assign cout0 = x0&y0;
endmodule

module fulladder(x1,y1,cin1,cout1,sum1);
	input x1,y1,cin1;
	output cout1,sum1;
	assign sum1 = x1 ^ y1 ^ cin1;
	assign cout1 = (x1&y1) | (x1&cin1) | (y1&cin1);
endmodule

module decomfulladd(x2,y2,cin2,cout2,sum2);
	input x2,y2,cin2;
	output cout2,sum2;
	halfadder stage0 (x2,y2,c1,s1);
	halfadder stage1 (s1,cin2,c2,sum2);
	assign cout2 = c1 | c2;
endmodule
	
