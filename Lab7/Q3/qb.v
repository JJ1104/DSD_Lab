module eighttoone(a,s,f);
	input [7:0] a;
	input [2:0] s;
	output f;
	reg f;
	always@(s,a)
	begin
		case(s)
			0: f =a[0];
			1: f =a[1];
			2: f =a[2];
			3: f =a[3];
			4: f =a[4];
			5: f =a[5];
			6: f =a[6];
			7: f =a[7];
		endcase
	end
endmodule
