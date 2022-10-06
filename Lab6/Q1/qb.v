module fourtoone(a,s,f);
	input [3:0] a;
	input [1:0] s;
	wire [1:0] c;
	output f;
	twotoone stage0(a[1:0],s[0],c[0]);
	twotoone stage1(a[3:2],s[0],c[1]);
	twotoone stage2(c,s[1],f);
endmodule


module twotoone(a,s,f);
	input [1:0] a;
	input s;
	output f;
	reg f;
	always@(s,a)
	begin
		if(s)
			f = a[1];
		else
			f = a[0];
	end
endmodule
