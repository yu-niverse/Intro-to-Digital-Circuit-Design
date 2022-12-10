module t_Lab3_Sequence_Recognizer();
	wire z1, z2;
	reg  x, clock, reset;
	
	Lab3_Sequence_Recognizer_state_diagram M1(x, clock, reset, z1);
	Lab3_Sequence_Recognizer_structure M2(x, clock, reset, z1);
	
	initial begin
		clock = 1'b0;
		forever #5 clock = ~clock;
	end
	
	initial fork
		   reset = 0; x = 1;
		#2 reset = 1;
		#20 x = 0;
		#40 x = 1;
		#50 x = 0;
		#60 x = 1;
		#77 reset = 0;
		#79 reset = 1;
		#80 x = 0;
		#100 x = 1;
		#110 x = 0;
	join
	
	initial #150 $finish;		

	//dump the result of simulation
	initial begin
		$dumpfile("t_Lab3_Sequence_Recognizer.vcd");
		$dumpvars;
	end
endmodule