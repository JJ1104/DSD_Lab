module reg5(i,o,clock,resetn);
	input [4:0] i;
	input clock,resetn;
	output [4:0] o;
	
	DFF s0(i[0],clock,resetn,o[0]);
	DFF s1(i[1],clock,resetn,o[1]);
	DFF s2(i[2],clock,resetn,o[2]);
	DFF s3(i[3],clock,resetn,o[3]);
	DFF s4(i[4],clock,resetn,o[4]);
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
