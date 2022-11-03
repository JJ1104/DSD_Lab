module DFF(d,clock,resetn,q);
	input d,resetn,clock;
	output reg q;
	always@(posedge resetn or posedge clock)
	begin
		if(resetn)
			q <= 0;
		else
			q <= d;
	end
endmodule
