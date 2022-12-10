module Lab3_SbRb_Latch_gatelevel(input Sb, Rb, output Q, Qb);
	
	nand #(5) (Q, Sb, Qb);
	nand #(5) (Qb, Rb, Q);
	
endmodule
