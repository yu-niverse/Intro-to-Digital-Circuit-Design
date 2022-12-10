module t_Lab2_encoder_5bit();
	wire [0:2]A0, A1, A2;
	wire V0, V1, V2;
	reg [0:4]D;
	
	Lab2_encoder_5bit_gate_level M0(D, A0, V0);
	Lab2_encoder_5bit_dataflow M1(D, A1, V1);
	Lab2_encoder_5bit_behavior M2(D, A2, V2);
	
	initial begin
		D[0:4]=5'b00000;
		#30 D[0:4]=5'b00001;
		#30 D[0:4]=5'b00011;
		#30 D[0:4]=5'b00110;
		#30 D[0:4]=5'b01001;
		#30 D[0:4]=5'b01101;
		#30 D[0:4]=5'b10110;
		#30 D[0:4]=5'b11010;
	end
	initial #240 $finish;

	//dump the result of simulation
	initial begin
		$dumpfile("t_Lab2_encoder_5bit.vcd");
		$dumpvars;
	end
endmodule