module func(a,f);
	input [3:0] a;
	output f;
	wire [15:0] h;
	dec4to16 s0(a,h);
	assign f = h[1] | h[3] | h[6] | h[7] | h[9] | h[14] | h[15];	
endmodule

module dec4to16(a,f);
	input [3:0] a;
	output reg [15:0] f;
	integer i;
	always@(a)
	begin
		for(i=0;i<16;i=i+1)
		begin
			if(a == i)
				f[i] = 1;
			else
				f[i] = 0;
		end
	end
endmodule
	
