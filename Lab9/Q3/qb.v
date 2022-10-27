module main(a,En,f);
	input [2:0] a;
	input En;
	output f;
	wire [7:0] c;
	twotofour s0(a[1:0],~a[2]&En,c[3:0]);
	twotofour s1(a[1:0],a[2]&En,c[7:4]);
	assign f = c[3] | c[5] | c[6] | c[7];
endmodule


module twotofour(a,En,f);	
	input [1:0] a;
	input En;
	output reg [3:0] f;
	always@(a,En)
	begin
		case(En)
		  0: f = 4'b0000;
		  1:
		  begin
		  	case(a)
		  		0:f=4'b0001;
		  		1:f=4'b0010;
		  		2:f=4'b0100;
		  		3:f=4'b1000;
		  	endcase
		  end
		 endcase
	end
endmodule	
