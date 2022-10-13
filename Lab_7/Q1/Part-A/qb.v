module main(a,f);
	input [3:0] a;
	output f;
	eighttoone stage0(a[0],a[3:1],f);
endmodule

module eighttoone(a,s,f);
	input a;
	input [2:0] s;
	output f;
	reg f;
	always@(s,a)
	begin
		case(s)
			0: f = 0;
			1: f = 0;
			2: f = 1;
			3: f = 1;
			4: f = 1;
			5: f = 0;
			6: f = 1;
			7: f = ~a;
		endcase
	end
endmodule
