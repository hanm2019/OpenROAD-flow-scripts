module Addition_Subtraction(

input [15:0] a_operand,b_operand, //Inputs in the format of IEEE-754 Representation.
output [15:0] result //Outputs in the format of IEEE-754 Representation.
);

wire operation_sub_addBar;
wire Comp_enable;
wire output_sign;

wire [15:0] operand_a,operand_b;
wire [7:0] significand_a,significand_b;
wire [7:0] exponent_diff;


wire [7:0] significand_b_add_sub;
wire [7:0] exponent_b_add_sub;

wire [8:0] significand_add;
wire [14:0] add_sum;

wire [7:0] significand_sub_complement;
wire [8:0] significand_sub;
wire [14:0] sub_diff;
wire [8:0] subtraction_diff;
wire [7:0] exponent_sub;

//for operations always operand_a must not be less than b_operand
assign {Comp_enable,operand_a,operand_b} = (a_operand[14:0] < b_operand[14:0]) ? {1'b1,b_operand,a_operand} : {1'b0,a_operand,b_operand};

assign exp_a = operand_a[14:7];
assign exp_b = operand_b[14:7];


assign output_sign =  operand_a[15] ;

assign operation_sub_addBar =  ~(operand_a[15] ^ operand_b[15]);

//Assigining significand values according to Hidden Bit.
//If exponent is equal to zero then hidden bit will be 0 for that respective significand else it will be 1
assign significand_a = (|operand_a[14:7]) ? {1'b1,operand_a[6:0]} : {1'b0,operand_a[6:0]};
assign significand_b = (|operand_b[14:7]) ? {1'b1,operand_b[6:0]} : {1'b0,operand_b[6:0]};

//Evaluating Exponent Difference
assign exponent_diff = operand_a[14:7] - operand_b[14:7];

//Shifting significand_b according to exponent_diff
assign significand_b_add_sub = significand_b >> exponent_diff;

assign exponent_b_add_sub = operand_b[14:7] + exponent_diff;

//Checking exponents are same or not
assign perform = (operand_a[14:7] == exponent_b_add_sub);

///////////////////////////////////////////////////////////////////////////////////////////////////////
//------------------------------------------------ADD BLOCK------------------------------------------//

assign significand_add = (perform & operation_sub_addBar) ? (significand_a + significand_b_add_sub) : 9'd0;

//Result will be equal to Most 23 bits if carry generates else it will be Least 22 bits.
assign add_sum[6:0] = significand_add[8] ? significand_add[7:1] : significand_add[6:0];

//If carry generates in sum value then exponent must be added with 1 else feed as it is.
assign add_sum[14:7] = significand_add[8] ? (1'b1 + operand_a[14:7]) : operand_a[14:7];

///////////////////////////////////////////////////////////////////////////////////////////////////////
//------------------------------------------------SUB BLOCK------------------------------------------//

assign significand_sub_complement = (perform & !operation_sub_addBar) ? ~(significand_b_add_sub) + 8'd1 : 8'd0 ;

assign significand_sub = perform ? (significand_a + significand_sub_complement) : 9'd0;

priority_encoder pe(significand_sub,operand_a[14:7],subtraction_diff,exponent_sub);

assign sub_diff[14:7] = exponent_sub;

assign sub_diff[6:0] = subtraction_diff[6:0];

///////////////////////////////////////////////////////////////////////////////////////////////////////
//-------------------------------------------------OUTPUT--------------------------------------------//

//If there is no exception and operation will evaluate


assign result =  ((!operation_sub_addBar) ? {output_sign,sub_diff} : {output_sign,add_sum});

endmodule