module main(a,f);
	input [2:0] a;
	output f;
	wire h,g;
	twotoone stage0({a[0],1'b0},a[1],g);
	twotoone stage1({1'b1,a[0]},a[1],h);
	twotoone stage2({h,g},a[2],f);
endmodule

module twotoone(a,s,f);
	input [1:0] a;
	input s;
	output f;
	reg f;
	always @(a,s)
	begin
		case(s)
			0: f = a[0];
			1: f = a[1];
		endcase
	end
endmodule

