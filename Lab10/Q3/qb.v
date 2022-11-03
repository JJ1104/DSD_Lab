module JKFF(j,k,clock,resetn,q);
	input j,k,clock,resetn;
	output reg q;
	always@(posedge clock)
	begin
	if(resetn)
		q <= 0;
	else
	begin
		if(j==0 && k==0)
			q <= q;
		else if(j==0 && k==1)
			q <= 0;
		else if(j==1 && k==0)
			q <= 1;
		else
			q = ~q;
	end
	end
endmodule
		
