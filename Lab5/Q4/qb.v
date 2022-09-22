module comp4bit(a,b,aeqb,agtb,altb);
	input [3:0] a,b;
	output aeqb,agtb,altb;
	comp2bit stage0(a[1:0],b[1:0],c1,c2,c3);
	comp2bit stage1(a[3:2],b[3:2],c4,c5,c6);
	assign aeqb = c1&c4;
	assign agtb = c1&c5 | c2;
	assign altb = ~(aeqb|agtb);
endmodule


module comp2bit(a,b,aeqb,agtb,altb);
	input [1:0] a,b;
	output aeqb,agtb,altb;
	assign aeqb = ~(a[1] ^ b[1]) & ~(a[0] ^ b[0]);
	assign agtb = a[1]&~b[1] | ~(a[1] ^ b[1]) & a[0]&~b[0];
	assign altb = ~(aeqb|agtb);
endmodule
