///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//File Name: Priority Encoder.v
//Created By: Sheetal Swaroop Burada
//Date: 30-04-2019
//Project Name: Design of 32 Bit Floating Point ALU Based on Standard IEEE-754 in Verilog and its implementation on FPGA.
//University: Dayalbagh Educational Institute
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


module priority_encoder(
			input [8:0] significand,
			input [7:0] Exponent_a,
			output reg [8:0] Significand,
			output [7:0] Exponent_sub
			);

reg [4:0] shift;

always @(significand)
begin
	casex (significand)
		9'b1_1xxx_xxxx :	begin
													Significand = significand;
									 				shift = 5'd0;
								 			  	end
		9'b1_01xx_xxxx : 	begin
										 			Significand = significand << 1;
									 				shift = 5'd1;
								 			  	end

		9'b1_001x_xxxx : 	begin
										 			Significand = significand << 2;
									 				shift = 5'd2;
								 				end

		9'b1_0001_xxxx : 	begin
													Significand = significand << 3;
								 	 				shift = 5'd3;
								 				end

		9'b1_0000_1xxx : 	begin
									 				Significand = significand << 4;
								 	 				shift = 5'd4;
								 				end

		9'b1_0000_01xx : 	begin
									 				Significand = significand << 5;
								 	 				shift = 5'd5;
								 				end

		9'b1_0000_001x : 	begin						// 24'h020000
									 				Significand = significand << 6;
								 	 				shift = 5'd6;
								 				end

		9'b1_0000_0001 : 	begin						// 24'h010000
									 				Significand = significand << 7;
								 	 				shift = 5'd7;
								 				end

		9'b1_0000_0000 : 	begin						// 24'h000000
								 					Significand = significand << 8;
							 	 					shift = 5'd8;
								 				end
		default : 	begin
						Significand = (~significand) + 1'b1;
						shift = 5'd0;
					end

	endcase
end
assign Exponent_sub = Exponent_a - shift;

endmodule