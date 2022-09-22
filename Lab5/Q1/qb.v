module comp5bit(a,b,aeqb,agtb,altb);
	input [4:0] a,b;
	output aeqb,agtb,altb;
	assign aeqb = ~(a[4]^b[4]) & ~(a[3]^b[3]) & ~(a[2]^b[2]) & ~(a[1]^b[1]) & ~(a[0]^b[0]);
	assign agtb = (a[4] & ~b[4]) | ~(a[4] ^ b[4])&a[3]&~b[3] | ~(a[4] ^ b[4])& ~(a[3] ^ b[3]) &a[2]&~b[2] | ~(a[4] ^ b[4])& ~(a[3] ^ b[3])& ~(a[2] ^ b[2]) &a[1]&~b[1] | ~(a[4] ^ b[4])& ~(a[3] ^ b[3])& ~(a[2] ^ b[2]) & ~(a[1] ^ b[1]) &a[0]&~b[0];
	assign altb = ~(aeqb|agtb);
endmodule  
	
