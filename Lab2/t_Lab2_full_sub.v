module t_Lab2_full_sub();
	wire B, D;
	reg x, y, z;
	
	//instantiate device under test
	Lab2_full_sub M(x, y, z, B, D);
	
	//apply inputs one at a time
	initial	begin
		x=1'b0; y=1'b0; z=1'b0;
		#20 x=1'b0; y=1'b0; z=1'b1;
		#20 x=1'b0; y=1'b1; z=1'b0;
		#20 x=1'b0; y=1'b1; z=1'b1;
		#20 x=1'b1; y=1'b0; z=1'b0;
		#20 x=1'b1; y=1'b0; z=1'b1;
		#20 x=1'b1; y=1'b1; z=1'b0;
		#20 x=1'b1; y=1'b1; z=1'b1;
	end
	initial #160 $finish;

	//dump the result of simulation
	initial begin
		$dumpfile("t_Lab2_full_sub.vcd");
		$dumpvars;
	end
endmodule