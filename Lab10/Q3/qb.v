module JKFF(j,k,clock,resetn,q);
	input j,k,clock,resetn;
	output reg q;
	always@(posedge clock)
	begin
	if(resetn)
		q <= 0;
	else
	begin
		if(
