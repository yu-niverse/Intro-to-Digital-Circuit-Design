module Lab2_half_sub_gatelevel(input x, y, output B, D);
	wire not_x;
	not (not_x, x);
	xor #(4) (D, x, y);
	and #(2) (B, not_x, y);
endmodule
	
	