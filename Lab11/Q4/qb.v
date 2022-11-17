module sync4(clk,clear,Q);
	input clk,clear;
	output [3:0] Q;
	TFF s0(1'b1,clk,clear,Q[0]);
	TFF s1(Q[0],clk,clear,Q[1]);
	TFF s2(Q[1]&Q[0],clk,clear,Q[2]);
	TFF s3(Q[0]&Q[1]&Q[2],clk,clear,Q[3]);
endmodule

module TFF(t,clock,resetn,q);
	input t,resetn,clock;
	output reg q;
	always@(negedge clock)
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

	
	
