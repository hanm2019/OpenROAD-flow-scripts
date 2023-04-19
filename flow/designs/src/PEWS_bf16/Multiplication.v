module Multiplication(
		input [15:0] a_operand,
		input [15:0] b_operand,
		output [15:0] result
		);

wire sign,product_round,normalised,zero;
wire [8:0] exponent,sum_exponent;
wire [6:0] product_mantissa;
wire [23:0] operand_a,operand_b;
wire [15:0] product,product_normalised; //48 Bits

assign sign = a_operand[15] ^ b_operand[15];


//Assigining significand values according to Hidden Bit.
//If exponent is equal to zero then hidden bit will be 0 for that respective significand else it will be 1

assign operand_a = (|a_operand[14:7]) ? {1'b1,a_operand[6:0]} : {1'b0,a_operand[6:0]};

assign operand_b = (|b_operand[14:7]) ? {1'b1,b_operand[6:0]} : {1'b0,b_operand[6:0]};

assign product = operand_a * operand_b;			//Calculating Product

assign product_round = |product_normalised[6:0];  //Ending 22 bits are OR'ed for rounding operation.

assign normalised = product[16] ? 1'b1 : 1'b0;

assign product_normalised = normalised ? product : product << 1;	//Assigning Normalised value based on 48th bit

//Final Manitssa.
assign product_mantissa = product_normalised[14:8] + (product_normalised[7] & product_round);

assign zero = (product_mantissa == 7'd0) ? 1'b1 : 1'b0;

assign sum_exponent = a_operand[14:7] + b_operand[14:7];

assign exponent = sum_exponent - 8'd127 + normalised;

assign result =  zero ? {sign,15'd0} :  {sign,exponent[7:0],product_mantissa};

endmodule