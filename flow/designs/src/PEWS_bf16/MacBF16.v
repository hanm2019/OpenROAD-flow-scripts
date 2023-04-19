//a*b+c
module MacBF16(
		input [15:0] a,
		input [15:0] b,
		input [15:0] c,
		output [15:0] result
		);
        wire [15:0] axb;
        Multiplication Multi(
        		a,
        		b,
        		axb
        		);
		Addition_Subtraction add(axb,c, result);

endmodule