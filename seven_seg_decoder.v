module seven_seg_decoder(A, B, C, D, E, F, G, X3, X2, X1, X0);
	input X3, X2, X1, X0;
	output A, B, C, D, E, F, G;
	reg [6:0] H;
	
	always @(X3 or X2 or X1, X0)
	begin
		case({X3, X2, X1, X0})
		
			4'b0000: H=7'b1111111;
			4'b0001: H=7'b1001111;
			4'b0010: H=7'b0010010;
			4'b0011: H=7'b0000110;
			4'b0100: H=7'b1001100;
			4'b0101: H=7'b0100100;
			4'b0110: H=7'b0100000;
			4'b0111: H=7'b0001111;
			4'b1000: H=7'b0000000;
			4'b1001: H=7'b0000100;
			4'b1010: H=7'b0001000;
			4'b1011: H=7'b1100000;
			4'b1100: H=7'b0110001;
			4'b1101: H=7'b1000010;
			4'b1110: H=7'b0110000;
			4'b1111: H=7'b0111000;
		endcase
	end
	assign {A, B, C, D, E, F, G} = H;
endmodule 