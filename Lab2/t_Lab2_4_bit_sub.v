module t_Lab2_4_bit_sub();
	wire [3:0]D0, D1, D2, D3;
	wire Bout0, Bout1, Bout2, Bout3;
	reg [3:0]X, Y;
	reg Bin;
	
	Lab2_4_bit_RBS M0(X, Y, Bin, Bout0, D0);
	Lab2_4_bit_BLS_gatelevel M1(X, Y, Bin, Bout1, D1);
	Lab2_4_bit_BLS_dataflow M2(X, Y, Bin, Bout2, D2);
	Lab2_4_bit_BLS_behavioral M3(X, Y, Bin, Bout3, D3);
	
	initial begin
		X[3:0]=4'b1111; Y[3:0]=4'b1111; Bin=1'b1;
		#30 X[3:0]=4'b0001; Y[3:0]=4'b1101; Bin=1'b0;
		#30 X[3:0]=4'b0101; Y[3:0]=4'b0101; Bin=1'b0;
		#30 X[3:0]=4'b1100; Y[3:0]=4'b0011; Bin=1'b1;
		#30 X[3:0]=4'b1000; Y[3:0]=4'b0111; Bin=1'b0;
		#30 X[3:0]=4'b0000; Y[3:0]=4'b1111; Bin=1'b1;
		#30 X[3:0]=4'b0110; Y[3:0]=4'b0001; Bin=1'b0;
		#30 X[3:0]=4'b1100; Y[3:0]=4'b1000; Bin=1'b1;
	end
	initial #240 $finish;

	//dump the result of simulation
	initial begin
		$dumpfile("t_Lab2_4_bit_sub.vcd");
		$dumpvars;
	end
endmodule