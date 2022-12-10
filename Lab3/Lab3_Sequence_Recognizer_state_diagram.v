module Lab3_Sequence_Recognizer_state_diagram(input x, clock, reset, output reg z);
	reg [2:0] state, next_state;
	parameter S0 = 3'b000, S1 = 3'b001, S2 = 3'b010, S3 = 3'b011, S4 = 3'b100, S5 = 3'b101;
	
	//State Transition
	always @(posedge clock, negedge reset)
		if (reset == 0)state <= S0; //Active LOW
		else state <= next_state;
	
	//Forming the next state
	always @(state, x)
		case(state)
			S0: if(x) next_state = S4; else next_state = S1;
			S1: if(x) next_state = S2; else next_state = S1;
			S2: if(x) next_state = S4; else next_state = S3;
			S3: if(x) next_state = S2; else next_state = S5;
			S4: if(x) next_state = S4; else next_state = S3;
			S5: if(x) next_state = S2; else next_state = S1;
		endcase
	
	//Forming the output
	always @(state, x)
		case(state)
			S0, S1, S3, S4: z = 0;
			S2: z = ~x;
			S5: z = x;
		endcase
endmodule
			
			
	