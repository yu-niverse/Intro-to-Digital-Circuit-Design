module Lab3_PE_Dff_gatelevel(input D, clock, output Q, Qb);
	wire Sb, Rb, w1, w2;
	
	Lab3_SbRb_Latch_gatelevel SbRb_Latch(Sb, Rb, Q, Qb);
	nand #(5) G1(w1, D, Rb);
	nand #(5) G2(Rb, Sb, clock, w1);
	nand #(5) G3(Sb, w2, clock);
	nand #(5) G4(w2, w1, Sb);

endmodule
