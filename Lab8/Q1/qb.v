module threetoeight(a,En,f);
	input [2:0] a;
	input En;
	output [7:0] f;
	wire [1:0] E;
	assign E[0] = En & ~a[2];
	assign E[1] = En & a[2];
	twotofour stage0(a[1:0],E[0],f[3:0]);
	twotofour stage1(a[1:0],E[1],f[7:4]);
endmodule

module twotofour(a,En,f);	
	input [1:0] a;
	input En;
	output reg [3:0] f;
	always@(a,En)
	begin
		if(En == 1)
		begin
			if(a == 0)
			f = 4'd1;
			else if(a == 1)
			f = 4'd2;
			else if(a == 2)
			f = 4'd4;
			else if(a == 3)
			f = 4'd8;
		end	
		else
			f=4'd0;
	end
endmodule	

