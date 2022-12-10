module Lab1_gatelevel(F, A, B, C, D);
	output F;
	input A, B, C, D;
	wire w1, w2, w3, w4, w5, w6, w7;
	
	and G2(w4, w1, w3), G7(w7, w5, w6);
	not G3(w2, C), G6(w6, B);
	or G1(w1, A, B), G4(w3, w2, D), G5(w5, A, C), G8(F, w4, w7);
endmodule
	
