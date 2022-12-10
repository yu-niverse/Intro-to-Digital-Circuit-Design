module Lab2_encoder_5bit_gate_level(input [0:4] D, output [0:2] A, output V);
	wire w0, w1, w2, w3;
	wire [0:4] not_D;
	
	not (not_D[0], D[0]), (not_D[1], D[1]), (not_D[2], D[2]), (not_D[3], D[3]), (not_D[4], D[4]);
	
	//A[2]
	and (A[2], not_D[0], not_D[1], not_D[2], not_D[3], D[4]);
	
	//A[1]
	and (w1, not_D[0], not_D[1], D[2]);
	and (w2, not_D[0], not_D[1], not_D[2], D[3]);
	or (A[1], w1, w2);
	
	//A[0]
	and (w3, not_D[0], D[1]);
	or (A[0], w3, w2);
	
	//V
	or (V, D[0], D[1], D[2], D[3], D[4]);
	
endmodule
