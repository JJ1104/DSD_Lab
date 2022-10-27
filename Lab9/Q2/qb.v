module func(a,f,g,h);
	input [3:0] a;
	output f,g,h;
	wire [15:0] z;
	fourtosixteen s0(a,1'b1,z);
	
	assign f = z[11] | z[10] | z[7] | z[3] | z[14] | z[6];
	assign g = z[14] | z[10] | z[3] | z[2];
	assign h = z[1] | z[0] | z[15] | z[14] | z[7] | z[3];
endmodule
	

module fourtosixteen(a,En,f);
	input [3:0] a;
	input En;
	output [15:0] f;
	wire [3:0] c;
	twotofour stage0(a[3:2],En,c);
	twotofour stage1(a[1:0],c[0],f[3:0]);
	twotofour stage2(a[1:0],c[1],f[7:4]);
	twotofour stage3(a[1:0],c[2],f[11:8]);
	twotofour stage4(a[1:0],c[3],f[15:12]);
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

