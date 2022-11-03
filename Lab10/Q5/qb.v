module shiftreg6(i,o,clock,resetn);
	input i;
	input clock,resetn;
	output o;
	wire [4:0] c;
	
	DFF s0(i,clock,resetn,c[0]);
	DFF s1(c[0],clock,resetn,c[1]);
	DFF s2(c[1],clock,resetn,c[2]);
	DFF s3(c[2],clock,resetn,c[3]);
	DFF s4(c[3],clock,resetn,c[4]);
	DFF s5(c[4],clock,resetn,o);
	
endmodule
	
module DFF(d,clock,resetn,q);
	input d,resetn,clock;
	output reg q;
	always@(posedge clock)
	begin
		if(!resetn)
			q <= 0;
		else
			q <= d;
	end
endmodule
