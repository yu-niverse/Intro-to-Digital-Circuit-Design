module t_Lab3_PE_Dff_gatelevel();
	wire Q, Qb;
	reg D, clock;
	
	Lab3_PE_Dff_gatelevel M(D, clock, Q, Qb);
	
	initial begin
		D = 1'b1;
		#25 D = 1'b0;
		#40 D = 1'b1;
		#23 D = 1'b0;
		#34 D = 1'b1;
		#73 D = 1'b0;
	end
	
	initial begin
		clock = 1'b0;
		repeat(10)
			#20 clock = ~clock;
	end
	
	initial #200 $finish;		

	//dump the result of simulation
	initial begin
		$dumpfile("t_Lab3_PE_Dff_gatelevel.vcd");
		$dumpvars;
	end
endmodule