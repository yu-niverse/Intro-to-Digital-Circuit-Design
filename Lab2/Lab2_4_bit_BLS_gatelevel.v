module Lab2_4_bit_BLS_gatelevel(input [3:0]X, Y, input Bin, output Bout, output[3:0]Diff);
	wire [3:0] P, G, not_X, not_P;
	wire B1, B2, B3;
	wire w0, w1, w2, w3, w4, w5, w6, w7, w8, w9;
	
	//P[i], G[i]
	Lab2_half_sub_gatelevel HS0(X[0], Y[0], G[0], not_P[0]);
	not (P[0], not_P[0]);
	Lab2_half_sub_gatelevel HS1(X[1], Y[1], G[1], not_P[1]);
	not (P[1], not_P[1]);
	Lab2_half_sub_gatelevel HS2(X[2], Y[2], G[2], not_P[2]);
	not (P[2], not_P[2]);
	Lab2_half_sub_gatelevel HS3(X[3], Y[3], G[3], not_P[3]);
	not (P[3], not_P[3]);
	
	//B1
	and #(2) (w0, P[0], Bin);
	or #(2) (B1, G[0], w0);
	
	//B2
	and #(2) (w1, P[1], P[0], Bin);
	and #(2) (w2, P[1], G[0]);
	or #(2) (B2, G[1], w2, w1);
	
	//B3
	and #(2) (w3, P[2], P[1], P[0], Bin);
	and #(2) (w4, P[2], P[1], G[0]);
	and #(2) (w5, P[2], G[1]);
	or #(2) (B3, G[2], w3, w4, w5);
	
	//Bout
	and #(2) (w6, P[3], P[2], P[1], P[0], Bin);
	and #(2) (w7, P[3], P[2], P[1], G[0]);
	and #(2) (w8, P[3], P[2], G[1]);
	and #(2) (w9, P[3], G[2]);
	or #(2) (Bout, G[3], w6, w7, w8, w9);
	
	//Diff[i]
	xor #(4) (Diff[0], Bin, not_P[0]);
	xor #(4) (Diff[1], B1, not_P[1]);
	xor #(4) (Diff[2], B2, not_P[2]);
	xor #(4) (Diff[3], B3, not_P[3]);
	
endmodule












