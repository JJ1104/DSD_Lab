module mux8to1(a,s,f);
	input [7:0] a;
	input [2:0] s;
	output reg f;
	integer i;
	wire [7:0] c;
	threetoeight s0(s,1'b1,c);
	always@(c)
	begin
		f=1'b0;
		for(i=0;i<8;i=i+1)
		begin
			if(s==i)
				f= f | a[i]&c[i];
		end
	end
endmodule

module threetoeight(a,En,f);
	input [2:0] a;
	input En;
	output reg [7:0] f;
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
