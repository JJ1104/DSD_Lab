module main(b,g);
	input [3:0] b;
	output [3:0] g;
	wire h;
	assign h = b[1]^b[0];
	fourtoone stage0({1'b1,1'b1,1'b0,1'b0},b[3:2],g[3]);
	fourtoone stage1({1'b0,1'b1,1'b1,1'b0},b[3:2],g[2]);
	fourtoone stage2({~b[1],b[1],~b[1],b[1]},b[3:2],g[1]);
	fourtoone stage3({h,h,h,h},b[3:2],g[0]);
endmodule

module fourtoone(a,s,f);
	input [3:0]a;
	input [1:0] s;
	output f;
	reg f;
	always@(s,a)
	begin
		case(s)
			0: f =a[0];
			1: f =a[1];
			2: f =a[2];
			3: f =a[3];
		endcase
	end
endmodule
