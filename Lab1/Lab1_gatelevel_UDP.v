module Lab1_gatelevel_UDP(F, A, B, C, D);
	output F;
	input A, B, C, D;
	wire w1, w2, w3, w4, w5;
	
	Lab1_UDP M0(w4, A, B, w1, D);
	and G4(w5, w2, w3);
	or G3(w2, A, C), G5(F, w4, w5);
	not G1(w1, C), G2(w3, B);
endmodule
	
	
	
	