module fourtosixteen(a,En,f);
	input [3:0] a;
	input En;
	output [15:0] f;
	wire [3:0] c;
	twotofour stage0(a[3:2],En,c);
	twotofour stage1(a[1:0],~c[0],f[3:0]);
	twotofour stage2(a[1:0],~c[1],f[7:4]);
	twotofour stage3(a[1:0],~c[2],f[11:8]);
	twotofour stage4(a[1:0],~c[3],f[15:12]);
endmodule

module twotofour(a,En,f);	
	input [1:0] a;
	input En;
	output reg [3:0] f;
	always@(a,En)
	begin
		case(En)
		  0: f = 4'b1111;
		  1:
		  begin
		  	case(a)
		  		0:f=4'b1110;
		  		1:f=4'b1101;
		  		2:f=4'b1011;
		  		3:f=4'b0111;
		  	endcase
		  end
		 endcase
	end
endmodule	

