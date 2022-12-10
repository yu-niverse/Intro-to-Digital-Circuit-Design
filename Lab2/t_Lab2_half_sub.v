module t_Lab2_half_sub();
	wire B, D;
	reg x, y;
	
	//instantiate device under test
	Lab2_half_sub_gatelevel M(x, y, B, D);
	
	//apply inputs one at a time
	initial	begin
		x=1'b0; y=1'b0;
		#30 x=1'b0; y=1'b1;
		#30 x=1'b1; y=1'b0;
		#30 x=1'b1; y=1'b1;
	end
	initial #120 $finish;

	//dump the result of simulation
	initial begin
		$dumpfile("t_Lab2_half_sub.vcd");
		$dumpvars;
	end
endmodule
	