module TFF(t,clock,resetn,q);
	input t,resetn,clock;
	output reg q;
	always@(negedge resetn or negedge clock)
	begin
		if(!resetn)
			q <= 0;
		else
		begin
			if(t)
				q <= ~q;
			else
				q <= q;
		end
	end
endmodule
