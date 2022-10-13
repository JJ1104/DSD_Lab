module twotoone(a,f);
	input [2:0] a;
	output f;
	reg f;
	always @(a)
	begin
		case(a[2])
			0: f = a[1]&a[0];
			1: f = a[1]|a[0];
		endcase
	end
endmodule

