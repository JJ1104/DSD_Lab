module main(a,f);
	input [3:0] a;
	output f;
	fourtoone stage0(a[1:0],a[3:2],f);
endmodule


module fourtoone(a,s,f);
	input [1:0] a;
	input [1:0] s;
	output f;
	reg f;
	always@(s,a)
	begin
		case(s)
			0: f = ~a[0]|a[1];
			1: f = a[0];
			2: f = 0;
			3: f = 0;
	
		endcase
	end
endmodule

