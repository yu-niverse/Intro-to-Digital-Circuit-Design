module Lab3_Sequence_Recognizer_structure(input x, clock, reset, output z);
	wire [2:0]D, A, not_A;
	
	assign D[2] = (not_A[0]&x) || (A[1]&A[0]&~x);
	assign D[1] = (A[0]&x) || (A[1]&not_A[0]&~x) || (A[2]&not_A[0]&~x);
	assign D[0] = ~x;
	assign z = (A[1]&not_A[0]&~x) || (A[2]&A[0]&x);
	
	D_ff_AR Dff_A2(A[2], not_A[2], D[2], clock, reset);
	D_ff_AR Dff_A1(A[1], not_A[1], D[1], clock, reset);
	D_ff_AR Dff_A0(A[0], not_A[0], D[0], clock, reset);
endmodule
