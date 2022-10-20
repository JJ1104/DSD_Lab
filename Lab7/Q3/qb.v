module main(b,e);
	input [3:0] b;
	output [3:0] e;
	eighttoone stage0({1'b1,1'b1,b[0],1'b0,1'b0},b[3:1],e[3]);
	eighttoone stage1({b[0],1'b0,~b[0],1'b1,b[0]},b[3:1],e[2]);
	eighttoone stage2({~b[0],b[0],~b[0],b[0],~b[0]},b[3:1],e[1]);
	eighttoone stage3({~b[0],~b[0],~b[0],~b[0],~b[0]},b[3:1],e[0]);
endmodule

module eighttoone(a,s,f);
	input [4:0]a;
	input [2:0] s;
	output f;
	reg f;
	always@(s,a)
	begin
		casex(s)
			0: f =a[0];
			1: f =a[1];
			2: f =a[2];
			3: f =a[3];
			4: f =a[4];
			5: f = 1'bx;
			6: f = 1'bx;
			7: f = 1'bx;
		endcase
	end
endmodule
