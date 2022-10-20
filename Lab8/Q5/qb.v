module encoder16to4(a,f);
	input [15:0] a;
	output reg [3:0] f;
	integer i;
	always @(a)
	begin
		for(i=0;i<16;i=i+1)
		begin
			if(a[i] == 1)
				f=i;
		end
	end
endmodule
