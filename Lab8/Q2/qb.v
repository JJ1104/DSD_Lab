module fourtosixteen(a,En,f);
	input [3:0] a;
	input En;
	output [15:0] f;
	wire [1:0] E;
	assign E[0] = En & ~a[3];
	assign E[1] = En & a[3];
	threetoeight stage0(a[2:0],E[0],f[7:0]);
	threetoeight stage1(a[2:0],E[1],f[15:8]);
endmodule

module threetoeight(a,En,f);
	input [2:0] a;
	input En;
	output reg [7:0] f;
	wire [1:0] E;
	assign E[0] = En & ~a[2];
	assign E[1] = En & a[2];
	integer i;
	always@(a,En)
	begin
		for(i=0;i<=8;i=i+1)
		begin
			if((a == i) && (En == 1))
				f[i] = 1;
			else
				f[i] = 0;
		end
	end		
endmodule
