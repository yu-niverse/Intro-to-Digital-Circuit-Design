module D_ff_AR(Q, Qb, D, Clk, reset);
	output Q, Qb;
	input D, Clk, reset;
	reg Q;
	
	assign Qb = ~Q;
	always @(posedge Clk, negedge reset)
		if (!reset) Q <= 1'b0;
		else Q <= D;
endmodule
