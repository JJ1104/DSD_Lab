module sixtoone(a,s,f);
	input [15:0] a;
	input [3:0] s;
	output f;
	wire [3:0] c;
	fourtoone stage0(a[3:0],s[1:0],c[0]);
	fourtoone stage1(a[7:4],s[1:0],c[1]);
	fourtoone stage2(a[11:8],s[1:0],c[2]);
	fourtoone stage3(a[15:12],s[1:0],c[3]);
	fourtoone stage4(c,s[3:2],f);
endmodule


module fourtoone(a,s,f);
	input [3:0] a;
	input [1:0] s;
	wire [1:0] c;
	output f;
	reg f;
	always@(s,a)
	begin
		f = s[1]?(s[0]?a[3]:a[2]):(s[0]?a[1]:a[0]);
	end
endmodule
