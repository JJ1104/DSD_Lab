module fourtoone(a,s,f);
	input [3:0] a;
	input [1:0] s;
	output f;
	wire c1,c2;
	
	function twotoone;
		input [1:0] a;
		input s;
		case(s)
			0:twotoone = a[0];
			1:twotoone = a[1];
		endcase
	endfunction
	
	assign c1 = twotoone(a[1:0],s[0]);
	assign c2 = twotoone(a[3:2],s[0]);
	assign f = twotoone({c2,c1},s[1]);
endmodule
